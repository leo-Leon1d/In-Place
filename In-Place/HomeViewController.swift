//
//  HomeViewController.swift
//  In-Place
//
//  Created by Леонид Исраелян on 03.10.2021.
//

import UIKit

protocol test {
    func testmethod()
}

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var Places: UITableView!
    
    var places: [Place] = [
        Place(city: "San-Francisco", description: "Lorem ipsum dolor sit amet, consescetor adipiscing elit", imageAvatar: ["Avatar1", "Avatar2", "Avatar3"], mainImage: "Image", numberOfLikes: 8, placeName: "San-Francisco Bridge", postInfo: "+15 people booked"),
        Place(city: "Zagreb", description: "Lorem ipsum dolor sit amet, consescetor adipiscing elit", imageAvatar: ["Avatar4", "Avatar5", "Avatar6"], mainImage: "Image1", numberOfLikes: 10, placeName: "Zagreb Restaraunt", postInfo: "+21 people booked")
                          ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: PlaceTableViewCell = tableView.dequeueReusableCell(withIdentifier: PlaceTableViewCell.id, for: indexPath) as! PlaceTableViewCell
        
        let place = places[indexPath.row]
        cell.mainImage.image = UIImage(named: place.mainImage)
        cell.mainImageDescription.text = place.description
        cell.bottomPlace.text = place.city
        cell.firstFriend.image = UIImage(named: place.imageAvatar[0])
        cell.secondFriend.image = UIImage(named: place.imageAvatar[1])
        cell.thirdFriend.image = UIImage(named: place.imageAvatar[2])
        cell.mainImagePlace.text = place.placeName
        cell.postInfo.text = place.postInfo
        
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradient()
        
        Places.delegate = self
        
        Places.dataSource = self
        
        Places.register(UITableViewCell.self, forCellReuseIdentifier: "place")
     
    }
    
    private func addGradient() {
    
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.orange.cgColor, UIColor.purple.cgColor]
        layer.startPoint = CGPoint(x: 1.0, y: 0.0)
        layer.endPoint = CGPoint(x: 1.0, y: 0.0)
        view.layer.insertSublayer(layer, at: 0)
        
    }
    

}