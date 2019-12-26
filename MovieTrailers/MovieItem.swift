//
//  MovieItem.swift
//  MovieTrailers
//
//  Created by Frank Bara on 12/26/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct MovieItem: View {
    var movie: Movie
    
    var body: some View {
        // Align the image and text description
        VStack(alignment: .leading, spacing: 10.0) {
            Image(movie.thumbnail)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(movie.title)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(movie.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
        }
    }
}

struct MovieItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieItem(movie: moviesData.first!)
    }
}
