//
//  RWTIceDoc.m
//  ice
//
//  Created by Bam Ketmalasiri on 9/9/57 BE.
//  Copyright (c) 2557 com.bambanapt. All rights reserved.
//

#import "RWTIceDoc.h"
#import "RWTIceData.h"

@implementation RWTIceDoc
@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {
    if ((self = [super init])) {
        self.data = [[RWTIceData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}
@end
