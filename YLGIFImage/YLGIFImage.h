//
//  YLGIFImage.h
//  YLGIFImage
//
//  Created by Yong Li on 14-3-2.
//  Copyright (c) 2014年 Yong Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YLImageView;

@interface YLGIFImage : UIImage

///-----------------------
/// @name Image Attributes
///-----------------------

/**
 A C array containing the frame durations.
 
 The number of frames is defined by the count of the `images` array property.
 */
@property (nonatomic, readonly) NSTimeInterval *frameDurations;

/**
 Total duration of the animated image.
 */
@property (nonatomic, readonly) NSTimeInterval totalDuration;

/**
 Number of loops the image can do before it stops
 */
@property (nonatomic, readonly) NSUInteger loopCount;

- (UIImage*)getFrameWithIndex:(NSUInteger)idx;

///------------------------
/// @name Rendering support
///------------------------

@property (nonatomic) NSTimeInterval accumulator;

@property (nonatomic) NSUInteger currentFrameIndex;

@property (nonatomic, strong) UIImage* currentFrame;

- (void)addView:(YLImageView *)view;

- (void)removeView:(YLImageView *)view;

- (YLImageView *)firstAnimatingView;

@property (nonatomic, strong, readonly) NSHashTable *views;

@end
