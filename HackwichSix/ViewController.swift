//
//  ViewController.swift
//  HackwichSix
//
//  Created by Julianne Castillo on 10/19/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriendsArray = ["Beth", "Jordan", "Christian"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      
        return myFriendsArray.count
        
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = myFriendsArray[indexPath.row]
        
        cell?.textLabel?.text = text
        
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

