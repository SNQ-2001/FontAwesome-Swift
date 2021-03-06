//
//  String+.swift
//  FontAwesome-UIKit
//
//  Created by MIYAMOTO TAISHIN on 2022/07/14.
//

import Foundation

extension String {
    static func FontAwesome(unicode: String) -> String {
        guard let unicode = Int(unicode, radix: 16) else { return String(format: "%C", 0x0000) }
        return String(format: "%C", unicode)
    }
}
