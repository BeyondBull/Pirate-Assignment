//
//  BBViewController.m
//  Pirate Assignment
//
//  Created by Cameron Bull on 3/2/14.
//  Copyright (c) 2014 Beyond Bull. All rights reserved.
//

#import "BBViewController.h"
#import "BBFactory.h"
#import "BBCard.h"

@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    BBFactory *factory = [[BBFactory alloc] init];
    self.cards = [factory cards];
    self.character = [factory character];
    self.boss = [factory boss];
    self.currentPoint = CGPointMake(0, 0);
    [self updateCharaterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateCard];
    [self updateButton];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)northButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateCard];
    [self updateButton];
}


- (IBAction)southButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateCard];
    [self updateButton];
}

- (IBAction)eastButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateCard];
    [self updateButton];
}

- (IBAction)westButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateCard];
    [self updateButton];
}

- (IBAction)restartGameButton:(UIButton *)sender {
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

- (IBAction)actionButton:(UIButton *)sender {
    BBCard *card = [[self.cards objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (card.healthEffect == -15){
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharaterStatsForArmor:card.armor withWeapons:card.weapon withHealthEffect:card.healthEffect];
    if(self.character.health <= 0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death Message" message:@"You have died please restart game!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
    }
    else if(self.boss.health <=0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory Message" message:@"You have defeated Capt. Chaos. Victory is  yours!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    }
    [self updateCard];
    
}

- (void)updateCard {
    BBCard *cardModel = [[self.cards objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.cardImageView.image = cardModel.cardImage;
    self.storyLabel.text = cardModel.cardStory;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.armorLabel.text = self.character.armor.name;
    self.weapomLabel.text = self.character.weapon.name;
    [self.actionButtonPressed setTitle:cardModel.cardActionButton forState:UIControlStateNormal];
}

-(void)updateButton {
    self.westButtonPressed.hidden = [self cardNotExistAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButtonPressed.hidden = [self cardNotExistAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButtonPressed.hidden = [self cardNotExistAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButtonPressed.hidden = [self cardNotExistAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}

-(BOOL)cardNotExistAtPoint:(CGPoint)point{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.cards count] && point.y < [[self.cards objectAtIndex:point.x] count]) {
        return NO;
    }
    else {
        return YES;
    }
}

-(void)updateCharaterStatsForArmor:(BBArmor *)armor withWeapons:(BBWeapon *)weapon withHealthEffect:(int)healthEffect{
    if (armor != nil){
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0){
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

@end
