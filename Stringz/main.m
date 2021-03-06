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
    
    // declare a pointer to an NSError object, but don't instantiate it.
    // The NSError instance will only be created if there is, in fact, an error.
    NSError *error;
    
    BOOL success = [str writeToFile:@"/too/darned/bad.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    if (success)
      NSLog(@"done writing /tmp/cool.txt");
    else
      NSLog(@"writing /tmp/cool.txt failed %@", [error localizedDescription]);
    
    // read a string in from a file
    NSString *str1 = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error];
    
    if (!str1)
    {
      NSLog(@"read failed: %@", [error localizedDescription]);
    }
    else
    {
      NSLog(@"resolve.conf looks like this: %@", str1);
    }
    
  } // @autoreleasepool
    return 0;
} // main()
