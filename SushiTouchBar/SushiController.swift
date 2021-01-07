//
//  SushiController.swift
//  TouchBar
//
//  Created by Toshihiro Goto on 2021/01/07.
//

import Cocoa

class SushiController: NSViewController {
    
    override func loadView() {
        self.view = NSView()
    }
    
    override func viewDidAppear() {
        
        let sushiView = NSView()
        
        sushiView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width + 80, height: self.view.frame.height)
        sushiView.layer?.position = CGPoint(x: 0, y: 0)
        
        

        for i in 0...10 {
            let sushi = NSTextView(frame: NSRect(x: i * 80, y: -2, width: 30, height: 30))
            sushi.string = "🍣"
            sushi.drawsBackground = false
            sushi.font = NSFont.systemFont(ofSize: 20)
            
            sushiView.addSubview(sushi)
        }
        
        let anim = CABasicAnimation(keyPath: "position")
        anim.repeatCount = .infinity
        anim.duration = 1
        anim.fromValue = sushiView.layer?.position
        anim.toValue = NSValue(point: NSPoint(x: -80, y: 0))

        sushiView.layer?.add(anim, forKey: "position")

        self.view.addSubview(sushiView)
        
    }
    
}
