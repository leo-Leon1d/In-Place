//
//  PlaceTableViewCell.swift
//  In-Place
//
//  Created by Леонид Исраелян on 15.10.2021.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {
    
    static let id = "Place"
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var firstFriend: UIImageView!
    @IBOutlet weak var secondFriend: UIImageView!
    @IBOutlet weak var thirdFriend: UIImageView!
    @IBOutlet weak var mainImageDescription: UILabel!
    @IBOutlet weak var likeButton: UIImageView!
    @IBOutlet weak var bottomPlace: UILabel!
    @IBOutlet weak var mainImagePlace: UILabel!
    @IBOutlet weak var postInfo: UILabel!
}
