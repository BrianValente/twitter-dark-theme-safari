//
//  ViewController.swift
//  Twitter Dark
//
//  Created by Brian Valente on 6/6/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var contactButton: NSButtonLabel!
    
    let url = URL(string: "https://twitter.com/messages/compose?recipient_id=208561982")!

    override func viewDidLoad() {
        super.viewDidLoad()

        let gesture = NSClickGestureRecognizer()
        gesture.buttonMask = 0x1 // left mouse
        gesture.numberOfClicksRequired = 1
        gesture.target = self
        gesture.action = #selector(ViewController.openTwitterDm)
        
        contactButton.addGestureRecognizer(gesture)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @objc func openTwitterDm() {
        NSWorkspace.shared.open(self.url)
    }
    
}

