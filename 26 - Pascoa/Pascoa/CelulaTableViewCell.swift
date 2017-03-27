//
//  CelulaTableViewCell.swift
//  Pascoa
//
//  Created by admin on 27/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class CelulaTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNome: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
