//
//  AppDelegate.m
//  MG
//
//  Created by Tim Debo on 5/19/14.
//
//

#import "AppDelegate.h"
#import "WindowController.h"

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(BOOL)applicationShouldHandleReopen:(NSApplication*)application
                   hasVisibleWindows:(BOOL)visibleWindows{
    if(!visibleWindows){
        [self.windowController.window makeKeyAndOrderFront: nil];
    }
    return YES;
}

- (void) applicationDidFinishLaunching:(NSNotification *)aNotification {

    self.windowController = [[WindowController alloc] initWithURL: kStartPage];
    [self.windowController setWindowParams];
    [self.windowController showWindow:self];
    self.windowController.window.backgroundColor = [NSColor whiteColor];
//    BOOL success = [self.windowController.window setFrameUsingName:@"MacGapWindow"];
//    NSLog(@"frame width is : %f",self.windowController.window.frame.size.width);
    [[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate:self];
}

- (void) applicationWillTerminate:(NSNotification *)notification {
//    NSLog(@"frame width is : %f",self.windowController.window.frame.size.width);
//    [self.windowController.window saveFrameUsingName:@"MacGapWindow"];
//    NSLog(@"saved frame: %@", [self.windowController.window saveFrameUsingName:@"MacGapWindow"]);
}

- (BOOL)userNotificationCenter:(NSUserNotificationCenter *)center
     shouldPresentNotification:(NSUserNotification *)notification
{
    return YES;
}
@end
