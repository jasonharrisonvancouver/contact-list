//
//  ContactList.h
//  ContactList
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property (nonatomic, strong, readwrite) NSMutableArray<Contact *> *contacts;

- (void)addContact:(Contact *)newContact;

@end

NS_ASSUME_NONNULL_END
