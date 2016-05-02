//
//  AppDelegate.swift
//  QBlocker
//
//  Created by Stephen Radford on 01/05/2016.
//  Copyright © 2016 Cocoon Development Ltd. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let promptFlag = kAXTrustedCheckOptionPrompt.takeRetainedValue() as NSString
        let myDict: CFDictionary = [promptFlag: true]
        print(AXIsProcessTrustedWithOptions(myDict))
        
        KeyListener.sharedKeyListener.start()
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {

    }

}
