//
//  Contact.h
//  ContactList
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, strong, readwrite) NSString *fullName;
@property (nonatomic, strong, readwrite) NSString *emailAddress;

@end

NS_ASSUME_NONNULL_END
