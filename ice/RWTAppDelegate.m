//
//  RWTAppDelegate.m
//  ice
//
//  Created by Bam Ketmalasiri on 9/9/57 BE.
//  Copyright (c) 2557 com.bambanapt. All rights reserved.
//

#import "RWTAppDelegate.h"

#import "RWTMasterViewController.h"
#import "RWTIceDoc.h"

@implementation RWTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    RWTIceDoc *frd1 = [[RWTIceDoc alloc] initWithTitle:@"Bam" rating:4 thumbImage:[UIImage imageNamed:@"bamby.jpg"] fullImage:[UIImage imageNamed:@"bamby.jpg"]];
    RWTIceDoc *frd2 = [[RWTIceDoc alloc] initWithTitle:@"Book" rating:5 thumbImage:[UIImage imageNamed:@"book.png"] fullImage:[UIImage imageNamed:@"book.png"]];
    RWTIceDoc *frd3 = [[RWTIceDoc alloc] initWithTitle:@"Eve" rating:3 thumbImage:[UIImage imageNamed:@"eve.jpg"] fullImage:[UIImage imageNamed:@"eve.jpg"]];
    RWTIceDoc *frd4 = [[RWTIceDoc alloc] initWithTitle:@"Film" rating:1 thumbImage:[UIImage imageNamed:@"film.jpg"] fullImage:[UIImage imageNamed:@"film.jpg"]];
    RWTIceDoc *frd5 = [[RWTIceDoc alloc] initWithTitle:@"Nonie" rating:4 thumbImage:[UIImage imageNamed:@"nonie.jpg"] fullImage:[UIImage imageNamed:@"nonie.jpg"]];
    RWTIceDoc *frd6 = [[RWTIceDoc alloc] initWithTitle:@"Phee" rating:3 thumbImage:[UIImage imageNamed:@"phee.jpg"] fullImage:[UIImage imageNamed:@"phee.jpg"]];
    RWTIceDoc *frd7 = [[RWTIceDoc alloc] initWithTitle:@"Ping" rating:5 thumbImage:[UIImage imageNamed:@"ping.jpg"] fullImage:[UIImage imageNamed:@"ping.jpg"]];
    RWTIceDoc *frd8 = [[RWTIceDoc alloc] initWithTitle:@"TanA" rating:1 thumbImage:[UIImage imageNamed:@"tanA.jpg"] fullImage:[UIImage imageNamed:@"tanA.jpg"]];
    RWTIceDoc *frd9 = [[RWTIceDoc alloc] initWithTitle:@"TanO" rating:4 thumbImage:[UIImage imageNamed:@"tanO.jpg"] fullImage:[UIImage imageNamed:@"tanO.jpg"]];
    NSMutableArray *frds = [NSMutableArray arrayWithObjects:frd1, frd2, frd3, frd4, frd5, frd6, frd7, frd8, frd9, nil];
    
    UINavigationController *navController = (UINavigationController *) self.window.rootViewController;
    RWTMasterViewController *masterController = [navController.viewControllers objectAtIndex:0];
    masterController.frds = frds;
    [NSThread sleepForTimeInterval:4];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
