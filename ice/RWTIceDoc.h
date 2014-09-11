//
//  RWTIceDoc.h
//  ice
//
//  Created by Bam Ketmalasiri on 9/9/57 BE.
//  Copyright (c) 2557 com.bambanapt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RWTIceData;

@interface RWTIceDoc : NSObject
@property (strong) RWTIceData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage;

@end
