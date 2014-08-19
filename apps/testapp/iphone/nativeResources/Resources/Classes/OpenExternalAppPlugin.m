//
//  OpenExternalAppPlugin.m
//  nameTestIphone
//
//  Created by Idan Adar on 17/12/13.
//
//

#import "OpenExternalAppPlugin.h"

@implementation OpenExternalAppPlugin

    - (void)openApp:(CDVInvokedUrlCommand*)command {
    
        NSString *wazeAppURL = @"waze://";
        NSString *mapsAppURL = @"maps://";
    
        BOOL canOpenURL = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:wazeAppURL]];
    
        NSString *url = canOpenURL ? wazeAppURL : mapsAppURL;
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
        
        NSString *responseString =
        [NSString stringWithFormat:@"OK"];
        
        CDVPluginResult *pluginResult =
        [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:responseString];
        
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }

@end
