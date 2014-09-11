//
//  RWTIceData.h
//  ice
//
//  Created by Bam Ketmalasiri on 9/9/57 BE.
//  Copyright (c) 2557 com.bambanapt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RWTIceData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
