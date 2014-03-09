//
//  BBCharacter.h
//  Pirate Assignment
//
//  Created by Cameron Bull on 3/4/14.
//  Copyright (c) 2014 Beyond Bull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBArmor.h"
#import "BBWeapon.h"

@interface BBCharacter : NSObject

@property (strong, nonatomic) BBArmor *armor;
@property (strong, nonatomic) BBWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
