//
//  FontAwesomeTableViewCell.swift
//  FontAwesome-UIKit
//
//  Created by MIYAMOTO TAISHIN on 2022/07/14.
//

import UIKit

class FontAwesomeTableViewCell: UITableViewCell {
    @IBOutlet var iconLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var unicodeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func setCell(name: String, unicode: String) {
        iconLabel.font = UIFont(name: "FontAwesome", size: 20)
        iconLabel.text = String.FontAwesome(unicode: unicode)

        nameLabel.text = name

        unicodeLabel.text = unicode
    }
    
}
