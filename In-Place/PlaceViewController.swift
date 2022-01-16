//
//  PlaceViewController.swift
//  In-Place
//
//  Created by Леонид Исраелян on 14.11.2021.
//

import UIKit

class PlaceViewController: UIViewController {

    @IBOutlet weak var placeDescription: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    var placeData: Place?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = placeData {
            mainImage.image = UIImage(named: p.mainImage)
            place.text = p.placeName
        }
        
    }
    
    @IBAction func bookButton(_ sender: Any) {
    }
    
    @IBAction func likeButtonDidTapped(_ sender: Any) {
    }
    
    
    
}
