//
//  Movie.swift
//  MovieTrailers
//
//  Created by Frank Bara on 12/26/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

// Contains details for each movie.

import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var thumbnail: String
    var title: String
    var description: String
    var trailerLink: String
    var category: Category
    var isFeaturedMovie: Bool
    
    // Category will help seperate movies based on their genres.
    enum Category: String, CaseIterable, Codable, Hashable {
        case marvel = "Marvel"
        case dc = "DC"
        case actionAdventure = "Action and adventure"
    }
}
