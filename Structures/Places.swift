//
//  Places.swift
//  In-Place
//
//  Created by Леонид Исраелян on 15.10.2021.
//

import Foundation

struct Places: Codable {
    var place_name: String
    var place_description: String
    var place_images: [String]
    var city: String
    var liked: Bool
    var bookings: Booking
}

struct Booking: Codable {
    var user_avatars: [String]
    var number_of_bookings: Int
}

struct Place {
    var city: String
    var description: String
    var imageAvatar: [String]
    var mainImage: String
    var numberOfLikes: Int
    var placeName: String
    var postInfo: String

}

struct FriendsData {
    var name: String
    var description: String
    var imageAvatar: String
    var mainImage: String
    var date: String
}

struct MyInterests {
    var placeName: String
    var place: String
    var image: String
}
