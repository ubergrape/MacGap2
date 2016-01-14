//
//  GrapeMenuController.m
//  ChatGrape
//
//  Created by Luke on 14/01/16.
//
//

#import "GrapeMenuController.h"

@interface GrapeMenuController ()

@property (weak) IBOutlet NSMenuItem *openChatMenuItem;


@end

@implementation GrapeMenuController

- (IBAction)openChatWindow:(NSMenuItem *)sender {
    // Disable the menu item to re-open the view!
    [self.openChatMenuItem setEnabled:false];
    
    // Open the main window again
    [[[NSApp delegate] windowController] showWindow:[NSApp delegate]];
}

- (void)windowWillClose:(NSNotification *)notification {
    // Enable the menu item to re-open the view!
    [self.openChatMenuItem setEnabled:true];
}

- (BOOL) validateMenuItem:(NSMenuItem *)menuItem {
    // Is it the open chat window item? Handle enabling ourselves
    return ![[NSApp mainWindow] isVisible];
}

@end
