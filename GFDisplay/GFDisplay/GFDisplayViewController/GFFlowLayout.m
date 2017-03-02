//
//  GFFlowLayout.m
//  GFDisplay
//
//  Created by apple on 16/2/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "GFFlowLayout.h"

@implementation GFFlowLayout

- (void)prepareLayout
{
    [super prepareLayout];

    self.minimumInteritemSpacing = 0;

    self.minimumLineSpacing = 0;

    if (self.collectionView.bounds.size.height) {

        self.itemSize = self.collectionView.bounds.size;
    }

    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
}

@end
