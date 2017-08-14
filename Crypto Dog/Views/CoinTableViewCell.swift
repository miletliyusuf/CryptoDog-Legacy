//
//  CoinTableViewCell.swift
//  Crypto Dog
//
//  Created by Yusuf Miletli on 8/14/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

import UIKit

class CoinTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewCoin:UIImageView?
    @IBOutlet weak var labelSymbol:UILabel?
    @IBOutlet weak var labelPercantage:UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
