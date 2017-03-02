//
//  GFDisplayTitleLabel.m
//  GFDisplay
//
//  Created by apple on 16/2/23.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "GFDisplayTitleLabel.h"

@implementation GFDisplayTitleLabel

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];

    [_fillColor set];

    rect.size.width = rect.size.width * _progress;

    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceIn);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {

        self.backgroundColor = [UIColor clearColor];

        self.userInteractionEnabled = YES;

        self.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}


- (void)setProgress:(CGFloat)progress
{
    _progress = progress;

    [self setNeedsDisplay];
}


@end
