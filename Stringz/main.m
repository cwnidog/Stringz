//
//  main.m
//  Stringz
//
//  Created by John Leonard on 7/27/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    NSMutableString *str = [[NSMutableString alloc] init];
    
    for (int i = 0; i < 10; i++)
    {
      [str appendString:@"Aaron is cool\n"];
    }
    
    [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
    NSLog(@"done writing /tmp/cool.txt");
  } // @autoreleasepool
    return 0;
} // main()
