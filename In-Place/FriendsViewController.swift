//
//  FriendsViewController.swift
//  In-Place
//
//  Created by Леонид Исраелян on 03.10.2021.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var Friends: UITableView!
    
    @IBOutlet weak var Stories: UICollectionView!
    
    var friendPost: [FriendsData] = [FriendsData(name: "Steven Brook", description: "LabelLabelLabelLabelLabelLabelLabelLabel", imageAvatar: "Profile Image", mainImage: "Image-1", date: "18 July"),
        
        FriendsData(name: "Alex Williams", description: "I like animals", imageAvatar: "Profile Image-1", mainImage: "Image-2", date: "24 April")]
        
    var friendsImages = ["Story 1", "Story 2", "Story 3", "Story 4", "Story 5", "Story 6"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friendsImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.id, for: indexPath) as! CollectionViewCell
        
        let item = friendsImages[indexPath.row]
        cell.collectionViewImage.image = UIImage(named: item)
        
        return cell
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: PlaceTableViewCell = tableView.dequeueReusableCell(withIdentifier: PlaceTableViewCell.id, for: indexPath) as! PlaceTableViewCell
        
        let post = friendPost[indexPath.row]
        cell.friendImage.image = UIImage(named: post.mainImage)
        cell.friendDescription.text = post.description
        cell.friendName.text = post.name
        cell.friendPfp.image = UIImage(named: post.imageAvatar)
        cell.postDate.text = post.date
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Stories.delegate = self
        Stories.dataSource = self
        
        Friends.delegate = self
        Friends.dataSource = self
        
    }

}
