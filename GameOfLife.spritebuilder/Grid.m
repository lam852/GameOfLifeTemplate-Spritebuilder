//
//  Grid.m
//  GameOfLife
//
//  Created by Lam Choi on 23/11/2014.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"

// there are varibles that cannot be chaged
static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
}

-(void)onEnter
{
    [super onEnter];
    [self setupGrid];
    
    //accept touches on the gird
    self. userInteractionEnabled = YES;
}

-(void)setupGrid
{
    //divide the gird's size by the number of columns/rows to figure out the right width and hieght of each cel
    _cellWidth = self.contentSize.width / GRID_COLUMNS;
    _cellHeight = self.contentSize.height / GRID_ROWS;
    
    float x = 0;
    float y = 0;
    
    // initialize the array as a blank NSMutableArray
    _gridArray = [NSMutableArray array];
    
    // initialze Creatures
    for (int i = 0; i < GRID_ROWS; i++){
    // this is how you create two dimensional arrays in Objective-C. You put arrays into arrays.
        _gridArray[i] = [NSMutableArray array];
        x = 0;
        
        for (int j = 0; j < GRID_COLUMNS; j++){
            Creature *creature = [[Creature alloc] initCreature];
            creature.anchorPoint = ccp(0,0);
            creature.position = ccp(x,y);
            [self addChild:creature];
            
            // this is shorthand to access an array inside an array
            _gridArray[i][j] = creature;
            
            // make creatures visisble to test this method, remove this once we know we have filled the grid properly
            creature.isAlive = YES;
            
            x +=_cellWidth;
        }
            y +=_cellHeight;
        
    }
 
}
@end