//
//  LunBoViewController.h
//  imageLunBo
//
//  Created by mac on 15/1/30.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LunBoViewController : UIViewController<UIScrollViewDelegate>{
    BOOL isFromStart;
}

@property (nonatomic,strong)UIScrollView *scrollView;
@property (nonatomic,strong)UIPageControl *pageControl;
@property (nonatomic,strong)NSArray *arrayImages;
@property(nonatomic,strong)NSMutableArray *viewController;

@end
