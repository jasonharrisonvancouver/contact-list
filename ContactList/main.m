//
//  main.m
//  ContactList
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *ic = [[InputCollector alloc] init];
        
        ContactList *contactList = [[ContactList alloc] init];
        
        while(YES){
            
            
            NSString *prompt = @"\n\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application > ";
            
            NSString *userInput = [ic inputForPrompt:prompt];
            userInput = [userInput substringToIndex:[userInput length] -1];
            
            if([userInput isEqualToString:@"quit"]){
                NSLog(@"adieu");
                return 0;
            }else if([userInput isEqualToString:@"new"]){
                prompt = @"Full name: ";
                NSString *name = [ic inputForPrompt:prompt];
                NSLog(@"name is %@", name);
                
                prompt = @"Email address: ";
                NSString *email = [ic inputForPrompt:prompt];
                NSLog(@"email is %@", email);
                
                Contact *contact = [[Contact alloc] init];
                [contact setFullName:name];
                [contact setEmailAddress:email];
                
                [contactList addContact:contact];
                
                
            }else if([userInput isEqualToString:@"list"]){
                int i = 0;
                for (Contact *c in [contactList contacts]) {
                    NSLog(@"%d:%@ (%@)", i, [c fullName], [c emailAddress]);
                    i++;
                }
            }
        }
        //NSLog(@"your input was %@", userInput);
    }
    return 0;
}
