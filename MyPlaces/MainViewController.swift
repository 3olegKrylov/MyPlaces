//
//  MainViewController.swift
//  MyPlaces
//
//  Created by 3oleg_krylov on 30.01.2020.
//  Copyright © 2020 3oleg_krylov. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = ["1","2","3","4","5","6","7","8"]
    override func viewDidLoad() {
        super.viewDidLoad()

   }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        // Configure the cell...

        return cell
    }
    

/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
