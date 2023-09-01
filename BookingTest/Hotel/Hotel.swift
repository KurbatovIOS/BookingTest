//
//  Hotel.swift
//  BookingTest
//
//  Created by Kurbatov Artem on 01.09.2023.
//

import Foundation

struct Hotel: Decodable {
    let id: Int
    let name: String
    let adress: String
    let minimalPrice: Int
    let priceForIt: String
    let rating: Int
    let ratingName: String
    let imageUrls: [String]
    let aboutTheHotel: HotelInfo
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case adress
        case minimalPrice = "minimal_price"
        case priceForIt = "price_for_it"
        case rating
        case ratingName = "rating_name"
        case imageUrls = "image_urls"
        case aboutTheHotel = "about_the_hotel"
    }
}

struct HotelInfo: Decodable {
    let description: String
    let peculiarities: [String]
}
