//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Павел Маркин on 29/06/2019.
//  Copyright © 2019 Павел Маркин. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    
    let places = Place.getPlaces()


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image) ?? nil
        cell.imageView?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type


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
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}

}
