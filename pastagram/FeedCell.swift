//
//  FeedCell.swift
//  pastagram
//
//  Created by Deon Labrador on 3/19/20.
//  Copyright © 2020 Deon Labrador. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var postView: UIImageView!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var commentText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
