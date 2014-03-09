//
//  BBViewController.h
//  Pirate Assignment
//
//  Created by Cameron Bull on 3/2/14.
//  Copyright (c) 2014 Beyond Bull. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBCharacter.h"
#import "BBBoss.h"

@interface BBViewController : UIViewController

//Instance Variables
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *cards;
@property (strong, nonatomic) BBCharacter *character;
@property (strong, nonatomic) BBBoss *boss;

//IBOutlet for backgound image
@property (strong, nonatomic) IBOutlet UIImageView *cardImageView;

//IBOutlets for Labels
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weapomLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;


//IBOutlets for the buttons. These should NOT have the pressed in the name
@property (strong, nonatomic) IBOutlet UIButton *northButtonPressed;
@property (strong, nonatomic) IBOutlet UIButton *southButtonPressed;
@property (strong, nonatomic) IBOutlet UIButton *eastButtonPressed;
@property (strong, nonatomic) IBOutlet UIButton *westButtonPressed;
@property (strong, nonatomic) IBOutlet UIButton *actionButtonPressed;

//IBActions for the buttons. These should have the pressed in the name
- (IBAction)northButton:(UIButton *)sender;
- (IBAction)southButton:(UIButton *)sender;
- (IBAction)eastButton:(UIButton *)sender;
- (IBAction)westButton:(UIButton *)sender;
- (IBAction)restartGameButton:(UIButton *)sender;
- (IBAction)actionButton:(UIButton *)sender;





@end
