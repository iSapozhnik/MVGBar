//
//  StatusMenuController.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/9/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var menuBarView: DepartureView!
    @IBOutlet weak var statusMenu: NSMenu!
    @IBOutlet weak var departureItem: NSMenuItem!
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let height = NSApplication.shared.mainMenu?.menuBarHeight ?? 22.0
        let view = NSView(frame: NSRect(x: 0.0, y: 0.0, width: 80.0, height: height))
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.blue.cgColor
        
        
        
        let icon = NSImage(named: .statusIcon)
        icon?.isTemplate = true
//        statusItem.view = menuBarView
        statusItem.image = icon
        statusItem.menu = statusMenu
        
        departureItem.view = menuBarView
    }
    
    @IBAction func quitClick(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
    @IBAction func updateClicked(_ sender: NSMenuItem) {
        
    }
}
