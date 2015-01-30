//
//  LunBoViewController.m
//  imageLunBo
//
//  Created by mac on 15/1/30.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "LunBoViewController.h"

@interface LunBoViewController (){

    NSTimer *_timer;

}

@end

@implementation LunBoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayImages=[NSArray arrayWithObjects:[UIImage imageNamed:@"1@2x.jpg"],[UIImage imageNamed:@"2@2x.jpg"],[UIImage imageNamed:@"3@2x.jpg"],[UIImage imageNamed:@"4@2x.jpg"], nil];
    
    _scrollView=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    [_scrollView setPagingEnabled:YES];
    _scrollView.showsHorizontalScrollIndicator=NO;
    _scrollView.showsVerticalScrollIndicator=NO;
    [_scrollView setDelegate:self];
    [_scrollView setBackgroundColor:[UIColor lightGrayColor]];
    
    //ContentSize 这个属性对于UIScrollView挺关键的，取决于是否滚动。
    [_scrollView setContentSize:CGSizeMake(CGRectGetWidth(self.view.frame)*[self.arrayImages count], 200)];
    [self.view addSubview:_scrollView];
    
    _pageControl=[[UIPageControl alloc] initWithFrame:CGRectMake(0, self.scrollView.frame.size.height-20, self.view.frame.size.width, 20)];
    
    _pageControl.backgroundColor=[UIColor blackColor];
    _pageControl.currentPage=0;
    _pageControl.numberOfPages=[self.arrayImages count];
    
    [_pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_pageControl];
    
    _viewController=[[NSMutableArray alloc] init];
    
    for (NSInteger i=0; i<[self.arrayImages count]; i++) {
        [_viewController addObject:[NSNull null]];
    }
    
    _timer=[NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(scrollPages) userInfo:nil repeats:YES];
   [self loadScrollViewPage:0];
    [self loadScrollViewPage:1];
    [self loadScrollViewPage:2];
    [self loadScrollViewPage:3];
    
}


-(void)loadScrollViewPage:(NSInteger)page{
      NSLog(@"统计信息//是:%d",page);
    int pageDetail;
    
    if (page>=self.arrayImages.count ) {
        pageDetail=3;
    }else if(page<0){
    
        pageDetail=0;
    }else{
        pageDetail=page;
    
    }
    
    NSLog(@"page信息:%d",pageDetail);
    
    UIViewController *imageViewController=[self.viewController objectAtIndex:pageDetail];
    if ((NSNull *)imageViewController == [NSNull null])
           {
                    imageViewController = [[UIViewController alloc] init];
                    [self.viewController replaceObjectAtIndex:pageDetail withObject:imageViewController];
            }

        if (imageViewController.view.superview == nil) {
              CGRect frame = self.scrollView.frame;
                frame.origin.x = CGRectGetWidth(frame) * pageDetail;
                frame.origin.y = 0;
                imageViewController.view.frame = frame;
            
                //[self addChildViewController:imageViewController];
               [self.scrollView addSubview:imageViewController.view];
               [imageViewController didMoveToParentViewController:self];
       
              [imageViewController.view setBackgroundColor:[UIColor colorWithPatternImage:(UIImage *)[self.arrayImages objectAtIndex:pageDetail]]];
        }
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGFloat pageWidth = CGRectGetWidth(self.scrollView.frame);
    NSInteger page = floor((self.scrollView.contentOffset.x -pageWidth/2)/pageWidth) +1;
    
    
    
    self.pageControl.currentPage = page;
    
    
    [self loadScrollViewPage:page-1];
    [self loadScrollViewPage:page];
    [self loadScrollViewPage:page+1];
}


- (void)changePage:(id)sender
{
    NSInteger page = self.pageControl.currentPage;
    
    [self loadScrollViewPage:page - 1];
    [self loadScrollViewPage:page];
    [self loadScrollViewPage:page + 1];
    
    CGRect bounds = self.scrollView.bounds;
    bounds.origin.x = CGRectGetWidth(bounds) * page;
    bounds.origin.y = 0;
    [self.scrollView scrollRectToVisible:bounds animated:YES];
}

-(void)scrollPages{
    ++self.pageControl.currentPage;
    CGFloat pageWidth = CGRectGetWidth(self.scrollView.frame);
    if (isFromStart) {
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
        self.pageControl.currentPage = 0;
    }
    else
    {
        [self.scrollView setContentOffset:CGPointMake(pageWidth*self.pageControl.currentPage, self.scrollView.bounds.origin.y)];
        
    }
    if (_pageControl.currentPage == _pageControl.numberOfPages - 1) {
        isFromStart = YES;
    }
    else
    {
        isFromStart = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
