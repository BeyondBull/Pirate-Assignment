//
//  BBCard.h
//  Pirate Assignment
//
//  Created by Cameron Bull on 3/2/14.
//  Copyright (c) 2014 Beyond Bull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBWeapon.h"
#import "BBArmor.h"

@interface BBCard : NSObject

@property (nonatomic, strong) UIImage *cardImage;
@property (nonatomic, strong) NSString *cardStory;
@property (nonatomic, strong) NSString *cardActionButton;
@property (strong, nonatomic) BBWeapon *weapon;
@property (strong, nonatomic) BBArmor *armor;
@property (nonatomic) int healthEffect;

@end
