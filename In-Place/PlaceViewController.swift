//
//  PlaceViewController.swift
//  In-Place
//
//  Created by Леонид Исраелян on 14.11.2021.
//

import SDWebImage
import UIKit

class PlaceViewController: UIViewController {

    @IBOutlet weak var placeDescription: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var placeData: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = placeData {
            
            mainImage.sd_setImage(with: URL(string: p.place_images[0]), completed: nil)
            place.text = p.place_name
            placeDescription.text = p.place_description
            
        }
        
    }
    
    @IBAction func bookButton(_ sender: Any) {
    }
    
    @IBAction func likeButtonDidTapped(_ sender: Any) {
    }
    
    
    
}
