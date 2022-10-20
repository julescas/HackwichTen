//
//  ViewController.swift
//  HackwichSix
//
//  Created by Julianne Castillo on 10/19/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var countriesToVisit = [ "Greece", "Italy", "Japan", "Sweden", "Netherlands"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      
        return countriesToVisit.count
        
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = countriesToVisit[indexPath.row]
        
        cell?.textLabel?.text = text
        
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

