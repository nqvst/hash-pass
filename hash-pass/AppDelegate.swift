//
//  AppDelegate.swift
//  hash-pass
//
//  Created by Jack Enqvist on 2021-04-11.
//


import Cocoa
import SwiftUI

//@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var popover = NSPopover()
    var statusBarItem: NSStatusItem!
    
    var contentViewController: NSViewController {
        let contentView = ContentView()
        let exampleData = ObservableDataExample()
        return NSHostingController(rootView: contentView.environmentObject(exampleData))
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        popover.contentSize = NSSize(width: 340, height: 460)
        popover.animates = false
        
        print("hello")
        if let button = statusBarItem.button {
            print("hello + button")
            button.image = NSImage(systemSymbolName: "list.bullet", accessibilityDescription: nil)
//            button.title = "⟡"
            button.action = #selector(togglePopover)
            button.target = self
        }
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func togglePopover() {
        
        print("we pressed the button!")
        popover.behavior = .transient
        guard popover.behavior != .applicationDefined,
              let button = statusBarItem.button else {
            return
        }
        
        
        if popover.contentViewController == nil {
            popover.contentViewController = contentViewController
        }
        
        if popover.isShown {
            popover.performClose(button)
        } else {
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
        }
    }
    
    
}
