//
//  MovieData.swift
//  MovieTrailers
//
//  Created by Frank Bara on 12/26/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//
// Decode the movie json data into an array of movies.

import Foundation

let moviesData: [Movie] = load("Movies.json")

func load<T:Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error.localizedDescription)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self): \n\(error).")
    }
}
