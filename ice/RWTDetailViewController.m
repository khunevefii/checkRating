//
//  RWTDetailViewController.m
//  ice
//
//  Created by Bam Ketmalasiri on 9/9/57 BE.
//  Copyright (c) 2557 com.bambanapt. All rights reserved.
//

#import "RWTDetailViewController.h"
#import "RWTIceDoc.h"
#import "RWTIceData.h"
#import "RWTUIImageExtras.h"

@interface RWTDetailViewController ()
- (void)configureView;
@end

@implementation RWTDetailViewController

@synthesize picker = _picker;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    self.rateView.notSelectedImage = [UIImage imageNamed:@"bam40.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"eve40.png"];
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    
    if (self.detailItem) {
        self.titleField.text = self.detailItem.data.title;
        self.rateView.rating = self.detailItem.data.rating;
        self.imageView.image = self.detailItem.fullImage;
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation {
    return YES;
}

- (IBAction)titleFieldTextChanged:(id)sender {
    self.detailItem.data.title = self.titleField.text;
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark RWTRateViewDelegate

- (void)rateView:(RWTRateView *)rateView ratingDidChange:(float)rating {
    self.detailItem.data.rating = rating;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    self.title = @"Check Rating";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addPictureTapped:(id)sender {
    if (self.picker == nil) {
        self.picker = [[UIImagePickerController alloc] init];
        self.picker.delegate = self;
        self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        self.picker.allowsEditing = NO;
    }
    [self presentViewController:_picker animated:YES completion:nil];
}

#pragma mark UIImagePickerControllerDelegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *fullImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *thumbImage = [fullImage imageByScalingAndCroppingForSize:CGSizeMake(44, 44)];
    self.detailItem.fullImage = fullImage;
    self.detailItem.thumbImage = thumbImage;
    self.imageView.image = fullImage;
}

@end
