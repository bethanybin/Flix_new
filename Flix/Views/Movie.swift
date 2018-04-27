//
//  Movie.swift
//  
//
//  Created by Bethany Bin on 4/27/18.
//

import Foundation
class Movie{
    
    enum MovieKeys {
        static let title = "title"
        static let releaseDate = "release"
        static let voteAverage = "vote_average"
        static let posterPath = "poster_path"
        static let voteCount = "vote_count"
        static let backDropPath = "backdrop_path"
        static let overview = "overview"
        static let id = "id"
        static let baseUrl = "https://image.tmdb.org/t/p/w500"
    }
    
    var title: String
    var posterUrl: URL?
    var overview: String
    var backDropUrl: URL?
    var id: Int
    var voteCount: String
    var releaseDate: String
    var voteAverage: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary[MovieKeys.overview] as? String ?? "No overview"
        posterUrl = URL(string: MovieKeys.baseUrl + (dictionary[MovieKeys.posterPath] as! String))
        backDropUrl = URL(string: MovieKeys.baseUrl +
            (dictionary[MovieKeys.backDropPath] as! String))
        id = dictionary[MovieKeys.id] as! Int
        voteCount = dictionary[MovieKeys.voteCount] as? String ?? "0"
        releaseDate = dictionary[MovieKeys.releaseDate] as? String ?? "Unknown"
        voteAverage = dictionary[MovieKeys.voteAverage] as? String ?? "Unknown"
            
    }
    
    class func movies(dictionaries : [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        return movies
    }

}
