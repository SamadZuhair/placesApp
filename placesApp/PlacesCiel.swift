//
//  PlacesCiel.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/8/22.
//

import UIKit

class PlacesCiel: UITableViewCell {
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var discripton: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
