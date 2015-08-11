//
//  Tips.h
//  InWestminster
//
//  Created by leihe on 12/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tips : NSObject{
    NSString *category;
    NSString *name;
}

@property (nonatomic, copy) NSString *category;
@property (nonatomic, copy) NSString *name;

+ (id)tipsOfCategory:(NSString*)categroy name:(NSString*)name;

@end
