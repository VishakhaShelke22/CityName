//
//  CollectionViewController.swift
//  TableCollectionViewApp
//
//  Created by Mac on 17/05/22.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var cityCollection: UICollectionView!
    var city:[String] = ["Pune","Ahemednagar","Satara","Aurangabad","Jalna","Mumbai","Nashik","Akola","Kolhapur","Sangli"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityCollection.dataSource = self
       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        city.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.cityCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        as? CollectionViewCell
        cell?.cityLabel.text = city[indexPath.row]
        return cell ?? UICollectionViewCell()
    }
}

   

