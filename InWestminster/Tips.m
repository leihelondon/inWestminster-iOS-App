//
//  Tips.m
//  InWestminster
//
//  Created by leihe on 12/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "Tips.h"

@implementation Tips
@synthesize category;
@synthesize name;

+(id)tipsOfCategory:(NSString *)categroy name:(NSString *)name
{
    Tips *newTip=[[self alloc] init];
    newTip.category=categroy;
    newTip.name=name;
    return newTip;
}

@end
