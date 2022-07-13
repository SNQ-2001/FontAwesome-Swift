//
//  ViewController.swift
//  FontAwesome-UIKit
//
//  Created by MIYAMOTO TAISHIN on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    var Label: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "FontAwesome", size: 80)
        label.text = String.FontAwesome(unicode: "f1f4")
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(Label)

        NSLayoutConstraint.activate([
            Label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            Label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
        ])
    }
}

extension String {
    static func FontAwesome(unicode: String) -> String {
        guard let unicode = Int(unicode, radix: 16) else { return String(format: "%C", 0x0000) }
        return String(format: "%C", unicode)
    }
}
