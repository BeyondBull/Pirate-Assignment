//
//  BBFactory.h
//  Pirate Assignment
//
//  Created by Cameron Bull on 3/3/14.
//  Copyright (c) 2014 Beyond Bull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBCharacter.h"
#import "BBBoss.h"

@interface BBFactory : NSObject

-(NSArray *)cards;
-(BBCharacter *)character;
-(BBBoss *)boss;

@end
