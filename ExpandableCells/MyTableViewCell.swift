//
//  MyTableViewCell.swift
//  ExpandableCells
//
//  Created by Alexey Rashevskiy on 28/10/2016.
//  Copyright © 2016 Appuchino. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var cellHeightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func expand(expand: Bool) {
        if !expand {
            cellHeightConstraint.constant = 70.0
        } else {
            cellHeightConstraint.constant = 140.0
        }
        print("\(expand)")
    }

}
