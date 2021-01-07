//
//  WindowController.swift
//  TouchBar
//
//  Created by Toshihiro Goto on 2021/01/07.
//

import Cocoa

fileprivate extension NSTouchBarItem.Identifier {
    static let sushiID = NSTouchBarItem.Identifier("jp.food.touchbar.sushi")
}

class WindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    override func makeTouchBar() -> NSTouchBar? {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.sushiID]
        
        return mainBar
    }
    
}

extension WindowController: NSTouchBarDelegate {
    func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItem.Identifier) -> NSTouchBarItem? {
        
        if identifier == .sushiID {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = SushiController()
            
            return item
        }
        
        return nil
    }
}
