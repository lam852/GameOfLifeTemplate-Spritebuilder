//
//  Creature.m
//  GameOfLife
//
//  Created by Lam Choi on 23/11/2014.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

-(instancetype)initCreature {
    // since we made Creature inherit from CCSprite, 'super' below refers to CCSprite
    self = [super initWithImageNamed:@"GameOfLifeAsserts/Asserts/bubble.png"];
    
    if (self){
        self.isAlive = NO;
    }
    return self;
}

- (void)setIsAlive:(BOOL)newState {
    //When you create an @property as we did in the .h, an instance varialbe with a leading underscore is automatically created for you
    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from CCnode. ccsprite is a subclass of Ccnode, and creatue is a subclass of CCSprite, so Creatures have a visible propert
    self. visible = _isAlive;
}

@end
