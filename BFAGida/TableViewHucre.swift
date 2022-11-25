//
//  TableViewHucre.swift
//  BFAGida
//
//  Created by Furkan Akman on 25.11.2022.
//

import UIKit

class TableViewHucre: UITableViewCell {

    @IBOutlet weak var labelUrun: UILabel!
    
    @IBOutlet weak var labelFiyat: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
