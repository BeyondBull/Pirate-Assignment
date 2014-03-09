//
//  BBFactory.m
//  Pirate Assignment
//
//  Created by Cameron Bull on 3/3/14.
//  Copyright (c) 2014 Beyond Bull. All rights reserved.
//

#import "BBFactory.h"
#import "BBCard.h"

@implementation BBFactory

-(NSArray *)cards{
    
    BBCard *startCard = [[BBCard alloc] init];
    startCard.cardImage = [UIImage imageNamed:@"PirateStart.jpg"];
    startCard.cardStory = @	"Welcome to Pirate's Journey.  Defeat Capt. Chaos and you'll become most infamous pirate on the 7 seas. Here's a blunted sward to help you on your way.";
    BBWeapon *bluntedSword = [[BBWeapon alloc] init];
    bluntedSword.name = @"Blunted sword";
    bluntedSword.damage = 12;
    startCard.weapon = bluntedSword;
    startCard.cardActionButton = @"Take the sword";
    
    BBCard *parrotCard = [[BBCard alloc] init];
    parrotCard.cardImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    parrotCard.cardStory = @"You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    BBArmor *parrotArmor = [[BBArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    parrotCard.cardActionButton = @"Befriend parrot";


    BBCard *blacksmithCard = [[BBCard alloc] init];
    blacksmithCard.cardImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    blacksmithCard.cardStory = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    BBArmor *steelArmor = [[BBArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    blacksmithCard.armor = steelArmor;
    blacksmithCard.cardActionButton = @"Take the steel armor";

    NSArray *firstColumn = [[NSArray alloc] initWithObjects:startCard, parrotCard, blacksmithCard, nil];
    
    BBCard *octopusAttackCard = [[BBCard alloc] init];
    octopusAttackCard.cardImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    octopusAttackCard.cardStory = @"The legend of the deep, the mighty kraken appears";
    octopusAttackCard.healthEffect = -46;
    octopusAttackCard.cardActionButton = @"Abandon ship";

    
    BBCard *shipBattleCard = [[BBCard alloc] init];
    shipBattleCard.cardImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    shipBattleCard.cardStory = @"You sight a pirate battle off the coast";
    shipBattleCard.healthEffect = 8;
    shipBattleCard.cardActionButton = @"To Battle!";

    
    BBCard *plankCard = [[BBCard alloc] init];
    plankCard.cardImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    plankCard.cardStory = @"You have been captured by pirates and are ordered to walk the plank";
    plankCard.healthEffect = -22;
    plankCard.cardActionButton = @"Show no fear";

    
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:octopusAttackCard, shipBattleCard, plankCard, nil];

    BBCard *treasureCard = [[BBCard alloc] init];
    treasureCard.cardImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    treasureCard.cardStory = @"You stumble upon a hidden cave of pirate treasurer";
    treasureCard.healthEffect = 20;
    treasureCard.cardActionButton = @"Take treasure";

    
    BBCard *friendlyDockCard = [[BBCard alloc] init];
    friendlyDockCard.cardImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    friendlyDockCard.cardStory = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    friendlyDockCard.healthEffect = 12;
    friendlyDockCard.cardActionButton = @"Stop at the dock";

    
    BBCard *pirateAttackCard = [[BBCard alloc] init];
    pirateAttackCard.cardImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    pirateAttackCard.cardStory = @"A group of pirates attempts to board your ship";
    pirateAttackCard.healthEffect = -15;
    pirateAttackCard.cardActionButton = @"Fight the invaders";

    
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:treasureCard, friendlyDockCard, pirateAttackCard, nil];
    
    BBCard *weaponCard = [[BBCard alloc] init];
    weaponCard.cardImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    weaponCard.cardStory = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    BBWeapon *pistolWeapon = [[BBWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    weaponCard.cardActionButton = @"Take Pistol";

    
    BBCard *treasure2Card = [[BBCard alloc] init];
    treasure2Card.cardImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    treasure2Card.cardStory = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    treasure2Card.healthEffect = -7;
    treasure2Card.cardActionButton = @"Swim deep";

    
    BBCard *bossCard = [[BBCard alloc] init];
    bossCard.cardImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    bossCard.cardStory = @"Your final faceoff with the fearsome Capt. Chaos";
    bossCard.healthEffect = -15;
    bossCard.cardActionButton = @"Fight!";

    
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:weaponCard, treasureCard, bossCard, nil];
    
    NSArray *cards = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];

    return cards;
    
}

-(BBCharacter *)character{
    BBCharacter *character = [[BBCharacter alloc] init];
    character.health = 95;
    
    BBArmor *armor = [[BBArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    BBWeapon *weapon = [[BBWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(BBBoss *)boss{
    BBBoss *boss = [[BBBoss alloc] init];
    boss.health = 65;
    return boss;
}


@end
