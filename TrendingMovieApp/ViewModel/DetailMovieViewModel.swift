//
//  DetailMovieViewModel.swift
//  TrendingMovieApp
//
//  Created by Zafer Çalışkan on 20.02.2023.
//

import Foundation

class DetailMovieViewModel {
    
    var movie: Movie
    
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        
        self.movieID = movie.id
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview
        self.movieImage = makeImageURL(movie.backdropPath )
        
        
    }
    
    private func makeImageURL(_ imageURL: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageURL)")
    }
}
