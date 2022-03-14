//
//  ProfileViewController.swift
//  In-Place
//
//  Created by Леонид Исраелян on 03.10.2021.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var Interests: UICollectionView!
    
    var intrests: [MyInterests] = [
        MyInterests(placeName: "Karakum", place: "Desert", image: "Backround"),
        MyInterests(placeName: "Maldives", place: "Indian Ocean", image: "Backround 2"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Interests.delegate = self
        Interests.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        intrests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: InterestsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: InterestsCollectionViewCell.id, for: indexPath) as! InterestsCollectionViewCell
        
        return cell
        
    }
    

}
