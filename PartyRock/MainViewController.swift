//
//  ViewController.swift
//  PartyRock
//
//  Created by Kalyan Dechiraju on 27/03/17.
//  Copyright © 2017 Codelight Studios. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRockItems = [PartyRockModel]()
    let tableViewCellIdentifier = "PartyRockCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize data
        let partyRockItem = PartyRockModel(imageURL: "https://i.ytimg.com/vi/1w9DiGlZksU/maxresdefault.jpg", videURL: "<iframe width=\"350\" height=\"315\" src=\"https://www.youtube.com/embed/xGiBiHocSZM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
        
        partyRockItems.append(partyRockItem)
        partyRockItems.append(partyRockItem)
        partyRockItems.append(partyRockItem)
        partyRockItems.append(partyRockItem)
        partyRockItems.append(partyRockItem)
        
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellIdentifier, for: indexPath) as? PartyRockTableViewCell {
            cell.updateUI(partyRock: partyRockItems[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRockItems.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRockItem = partyRockItems[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRockItem)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoViewController {
            if let partyItem = sender as? PartyRockModel {
                destination.partyRockItem = partyItem
            }
        }
    }
    
    
}

