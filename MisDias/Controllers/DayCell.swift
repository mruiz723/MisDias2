//
//  DayCell.swift
//  MisDias
//
//  Created by Marlon David Ruiz Arroyave on 7/04/17.
//  Copyright © 2017 Eafit. All rights reserved.
//

import UIKit

class DayCell: UITableViewCell {

    //MARK: - IBOutlet
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    //MARK: - Properties
    var day: Day?
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - IBAction
    @IBAction func favorite(_ sender: UIButton) {
        
        favoriteButton.isSelected = !sender.isSelected
        day?.favorite = favoriteButton.isSelected
    }

    
    
    
    
    
    
    
    
}
