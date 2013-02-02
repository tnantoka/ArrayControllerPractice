//
//  BNAppDelegate.m
//  ArrayControllerPractice
//
//  Created by Tatsuya Tobioka on 13/02/02.
//  Copyright (c) 2013年 Tatsuya Tobioka. All rights reserved.
//

#import "BNAppDelegate.h"

#import "BNModel.h"

@implementation BNAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application

    NSMutableArray *objects = [NSMutableArray array];
    
    for (int i = 0; i < 30; i++) {
        BNModel *model = [[BNModel alloc] init];
        model.name = [NSString stringWithFormat:@"name %d", i];
        [objects addObject:model];
    }

    [_arrayController setContent:objects];
}

@end
