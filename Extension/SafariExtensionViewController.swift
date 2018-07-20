//
//  SafariExtensionViewController.swift
//  Extension
//
//  Created by Brian Valente on 6/6/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
