//
//  OSKSession.m
//  unread
//
//  Created by Jared Sinclair on 11/22/13.
//  Copyright (c) 2013 Nice Boy LLC. All rights reserved.
//

#import "OSKSession.h"

#import "NSString+OSK_UUID.h"

NSString * const OSKActivityOption_ActivityCompletionHandler = @"OSKActivityOption_ActivityCompletionHandler";

@implementation OSKSession

- (instancetype)initWithPresentationEndingHandler:(OSKPresentationEndingHandler)endingHandler
                        activityCompletionHandler:(OSKActivityCompletionHandler)activityHandler
                            customTopViewProvider:(OSKPresentationTopViewProvider)customTopViewProvider {
    self = [super init];
    if (self) {
        _sessionIdentifier = [NSString osk_stringWithNewUUID];
        _presentationEndingHandler = [endingHandler copy];
        _activityCompletionHandler = [activityHandler copy];
        _customTopViewProvider = [customTopViewProvider copy];
    }
    return self;
}

@end
