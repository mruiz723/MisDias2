//
//  DetailDayViewController.swift
//  MisDias
//
//  Created by Marlon David Ruiz Arroyave on 7/04/17.
//  Copyright © 2017 Eafit. All rights reserved.
//

import UIKit

protocol DetailDayViewControllerDelegate {
    
    func updateFavorite()

}
class DetailDayViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    //MARK: - Properties
    var day: Day!
    var delegate: DetailDayViewControllerDelegate?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBActions
    @IBAction func favorite(_ sender: UIButton) {
        favoriteButton.isSelected = !favoriteButton.isSelected
        day.favorite = favoriteButton.isSelected
        delegate?.updateFavorite()
    }
    
    
    // MARK: - Utils
    
    func loadData() {
        dayLabel.text = day?.day
        favoriteButton.isSelected = (day?.favorite)!
    }
}
