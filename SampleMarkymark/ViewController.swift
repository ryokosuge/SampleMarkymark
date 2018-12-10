//
//  ViewController.swift
//  SampleMarkymark
//
//  Created by RyoKosuge on 2018/12/05.
//  Copyright © 2018年 Ryo Kosuge. All rights reserved.
//

import UIKit
import markymark

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView?
    @IBOutlet weak var containerView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        guard
            let url = Bundle.main.url(forResource: "sample", withExtension: "md"),
            let data = try? Data(contentsOf: url),
            let string = String(data: data, encoding: .utf8) else {
            return
        }

        let styling = DefaultStyling()
        styling.paragraphStyling.textColor = UIColor.darkText
        styling.paragraphStyling.contentInsets = UIEdgeInsets(top: 0, left: 8, bottom: 8, right: 8)

        /*
        styling.headingStyling.isUnderlined = true
        styling.headingStyling.isBold = true
        styling.headingStyling.contentInsetsForLevels = [
            UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8),
            UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8),
            UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8),
            UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8),
            UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8),
            UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)
        ]

        styling.listStyling.contentInsets = UIEdgeInsets(top: 0, left: 8, bottom: 8, right: 8)
        styling.codeBlockStyling.contentInsets = UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
         */

        let view = MarkDownTextView(styling: styling)
        view.text = string
        view.translatesAutoresizingMaskIntoConstraints = false

        let urlOpener = CustomURLOpener()
        urlOpener.displayViewController = self
        view.urlOpener = urlOpener

        if let containerView = self.containerView {
            containerView.addSubview(view)
            view.topAnchor.constraint(equalToSystemSpacingBelow: containerView.topAnchor, multiplier: 0).isActive = true
            view.leadingAnchor.constraint(equalToSystemSpacingAfter: containerView.leadingAnchor, multiplier: 0).isActive = true
            containerView.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: 0).isActive = true
            containerView.bottomAnchor.constraint(equalToSystemSpacingBelow: view.bottomAnchor, multiplier: 0).isActive = true
        }
    }

}
