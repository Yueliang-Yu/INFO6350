//
//  ViewController.swift
//  FoodItems
//
//  Created by 余玥良 on 2023/10/1.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let foodNames = ["dumpling", "hotpot", "noodles", "Anqing Beef Baozi", "Huainan Beef Soup"]
    

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell", owner: self)?.first as! ImageTableViewCell
        cell.imageView?.image = UIImage(named: foodNames[indexPath.row])
        cell.lblImage.text = foodNames[indexPath.row]
        
        return cell
    }

}

