//
//  CustomURLOpener.swift
//  SampleMarkymark
//
//  Created by RyoKosuge on 2018/12/07.
//  Copyright © 2018年 Ryo Kosuge. All rights reserved.
//

import Foundation
import markymark
import SafariServices

class CustomURLOpener: URLOpener {

    weak var displayViewController: UIViewController?

    func open(url: URL) {
        let safari = SFSafariViewController(url: url)
        displayViewController?.present(safari, animated: true, completion: nil)
    }

}
