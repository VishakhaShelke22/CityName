//
//  ViewController.swift
//  TableCollectionViewApp
//
//  Created by Mac on 17/05/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var CityTable:UITableView!
    var city:[String] = ["Pune","Ahemdenagar","Satara","Aurangabad","Jalna","Mumbai","Nashik","Akola","Kolhapur","Sangali"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CityTable.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.CityTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = city[indexPath.row]
        return cell ?? UITableViewCell()
    }
    

}

