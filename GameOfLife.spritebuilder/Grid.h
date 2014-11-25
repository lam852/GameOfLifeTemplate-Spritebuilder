//
//  Grid.h
//  GameOfLife
//
//  Created by Lam Choi on 23/11/2014.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Grid : CCSprite

@property (nonatomic, assign) int totalAlive;
@property (nonatomic, assign) int gereration;

@end
