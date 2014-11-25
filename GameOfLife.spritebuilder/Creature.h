//
//  Creature.h
//  GameOfLife
//
//  Created by Lam Choi on 23/11/2014.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

//Stores the current state of the creature
@property (nonatomic, assign) BOOL isAlive;

// stores the amount of livng neighbors
@property (nonatomic, assign) NSInteger livingNeignors;

-(id)initCreature;

@end
