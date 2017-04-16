//
//  DaysViewController.swift
//  MisDias
//
//  Created by Marlon David Ruiz Arroyave on 1/04/17.
//  Copyright © 2017 Eafit. All rights reserved.
//

import UIKit

class DaysViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, DetailDayViewControllerDelegate {

     // MARK: - IBoutlet
    @IBOutlet weak var dayTableView: UITableView!
    
    
    // MARK: - Properties
    var days: [Day]?
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        days = Day.days()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let items = days {
            return items.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath) as! DayCell
        
        let day = days?[indexPath.row]
        cell.day = day
        cell.dayLabel.text = day?.day
        cell.favoriteButton.isSelected = (day?.favorite)!
        
        return cell
    }

    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let day = days?[indexPath.row]
        performSegue(withIdentifier: "detailDay", sender: day)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let detailDayVC = segue.destination as? DetailDayViewController {
            detailDayVC.day = sender as! Day
            detailDayVC.delegate = self
        }
    }
    
    func updateFavorite() {
        dayTableView.reloadData()
    }

}
