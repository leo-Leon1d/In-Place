//
//  PlaceTableViewCell.swift
//  In-Place
//
//  Created by Леонид Исраелян on 15.10.2021.
//

import UIKit

protocol PlaceTableViewCellDelegate: AnyObject {
    func addToWishList(cell: PlaceTableViewCell)
}

class PlaceTableViewCell: UITableViewCell {
    
    weak var delegate: PlaceTableViewCellDelegate?
    
    static let id = "Place"
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var firstFriend: UIImageView!
    @IBOutlet weak var secondFriend: UIImageView!
    @IBOutlet weak var thirdFriend: UIImageView!
    @IBOutlet weak var mainImageDescription: UILabel!
    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var bottomPlace: UILabel!
    @IBOutlet weak var mainImagePlace: UILabel!
    @IBOutlet weak var postInfo: UILabel!
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendPfp: UIImageView!
    @IBOutlet weak var friendDescription: UILabel!
    @IBOutlet weak var numberOfBookings: UILabel!
    
    @IBAction func likeButtonDidTapped(_ sender: Any) {
        
        if let delegate = delegate {
            delegate.addToWishList(cell: self)
            
            
            
        }
        
    }
}
