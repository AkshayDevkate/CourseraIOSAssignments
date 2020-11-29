//
//  ViewController.swift
//  courseraFanbase
//
//  Created by Akshay Devkate on 25/11/20.
//  Copyright © 2020 Akshay Devkate. All rights reserved.
//

import UIKit

class MovieVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            table.dataSource = self
            table.delegate = self
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "mTableViewCell") as? mTableViewCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
            return mTableViewCell()
        }
    }
    
   func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
    performSegue(withIdentifier: "actorVC", sender: category)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let actorVC = segue.destination as? actorVC{
            
            assert(sender as? Category != nil)
            actorVC.initActors(category: sender as! Category)
        }
    }
}
      




