//
//  MenuCell.swift
//  190707_SideMenu
//
//  Created by Ankam Ajay Kumar on 18/01/20.
//  Copyright © 2020 Ankam Ajay Kumar. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        textLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        // Configure the view for the selected state
    }

}
