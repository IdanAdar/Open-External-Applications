//
//  OpenExternalAppPlugin.h
//  nameTestIphone
//
//  Created by Idan Adar on 17/12/13.
//
//

#import <UIKit/UIKit.h>
#import <Cordova/CDV.h>

@interface OpenExternalAppPlugin : CDVPlugin

    - (void)openApp:(CDVInvokedUrlCommand*)command;
    
@end
