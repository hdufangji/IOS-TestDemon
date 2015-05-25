//
//  VFMediaDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 21/5/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFMediaDemon.h"
#include <AssetsLibrary/AssetsLibrary.h>

@interface VFMediaDemon ()
{
    UIButton *bt;
}

@end

@implementation VFMediaDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(void)getMediaData
{
    ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];
    
    // Enumerate just the photos and videos group by using ALAssetsGroupSavedPhotos.
    [library enumerateGroupsWithTypes:ALAssetsGroupSavedPhotos usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
        
        // Within the group enumeration block, filter to enumerate just videos.
        [group setAssetsFilter:[ALAssetsFilter allVideos]];
        
        // For this example, we're only interested in the first item.
        [group enumerateAssetsAtIndexes:[NSIndexSet indexSetWithIndex:0]
                                options:0
                             usingBlock:^(ALAsset *alAsset, NSUInteger index, BOOL *innerStop) {
                                 
                                 // The end of the enumeration is signaled by asset == nil.
                                 if (alAsset) {
                                     ALAssetRepresentation *representation = [alAsset defaultRepresentation];
                                     NSURL *url = [representation url];
//                                     AVAsset *avAsset = [AVURLAsset URLAssetWithURL:url options:nil];
                                     // Do something interesting with the AV asset.
                                 }
                             }];
    }
                         failureBlock: ^(NSError *error) {
                             // Typically you should handle an error more gracefully than this.
                             NSLog(@"No groups");
                         }];
    

}

@end
