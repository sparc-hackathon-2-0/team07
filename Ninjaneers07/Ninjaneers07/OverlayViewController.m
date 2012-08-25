
#import "OverlayViewController.h"

enum
{
	kOneShot,       // user wants to take a delayed single shot
	kRepeatingShot  // user wants to take repeating shots
};

@interface OverlayViewController ( )

@property (assign) SystemSoundID tickSound;

@property (nonatomic, retain) IBOutlet UIBarButtonItem *takePictureButton;

// camera page (overlay view)
- (IBAction)done:(id)sender;
- (IBAction)takePhoto:(id)sender;

@end

@implementation OverlayViewController

//@synthesize delegate;

#pragma mark -
#pragma mark OverlayViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
//    {
//        AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:
//                                                    [[NSBundle mainBundle] pathForResource:@"tick"
//                                                                                    ofType:@"aiff"]],
//                                                    &_tickSound);
//
//        self.imagePickerController = [[[UIImagePickerController alloc] init] autorelease];
//        self.imagePickerController.delegate = self;
//    }
//    return self;
//}

- (void)viewDidUnload
{
    [super viewDidUnload];
}


- (void)setupImagePicker:(UIImagePickerControllerSourceType)sourceType
{
    self.imagePickerController.sourceType = sourceType;
    
    if (sourceType == UIImagePickerControllerSourceTypeCamera)
    {
        // user wants to use the camera interface
        //
        self.imagePickerController.showsCameraControls = NO;
        
        if ([[self.imagePickerController.cameraOverlayView subviews] count] == 0)
        {
            // setup our custom overlay view for the camera
            //
            // ensure that our custom view's frame fits within the parent frame
            CGRect overlayViewFrame = self.imagePickerController.cameraOverlayView.frame;
            CGRect newFrame = CGRectMake(0.0,
                                         CGRectGetHeight(overlayViewFrame) -
                                         self.view.frame.size.height - 10.0,
                                         CGRectGetWidth(overlayViewFrame),
                                         self.view.frame.size.height + 10.0);
            self.view.frame = newFrame;
            [self.imagePickerController.cameraOverlayView addSubview:self.view];
        }
    }
}

// update the UI after an image has been chosen or picture taken
//
- (void)finishAndUpdate
{
    [self.delegate didFinishWithCamera];  // tell our delegate we are done with the camera
    self.takePictureButton.enabled = YES;
}


#pragma mark -
#pragma mark Camera Actions

- (IBAction)done:(id)sender
{
        [self finishAndUpdate];
}


- (IBAction)takePhoto:(id)sender
{
    [self.imagePickerController takePicture];
}

#pragma mark -
#pragma mark UIImagePickerControllerDelegate

// this get called when an image has been chosen from the library or taken from the camera
//
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    
    // give the taken picture to our delegate
    if (self.delegate)
        [self.delegate didTakePicture:image];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self.delegate didFinishWithCamera];    // tell our delegate we are finished with the picker
}

@end

