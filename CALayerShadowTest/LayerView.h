//
//  LayerView.h
//  CALayerShadowTest
//
//  Created by 達郎 植田 on 12/08/12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Layer;

@interface LayerView : UIView
{
    Layer *layer;
}

- (void)move;

@end
