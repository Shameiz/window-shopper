//
//  CategoryCell.swift
//  window-shopper
//
//  Created by Shameiz Rangwala on 2018-02-07.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var CategoryImage: UIImageView!
    @IBOutlet weak var CategoryTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
