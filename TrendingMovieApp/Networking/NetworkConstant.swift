//
//  NetworkConstant.swift
//  MovieTrending
//
//  Created by Zafer Çalışkan on 20.02.2023.
//

import Foundation

class NetworkConstant {
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init(){
        // Singleton
    }
    
    // Read only
    public var apiKey: String {
        get {
            return "d38fc9b53034b622cf9d649d48b291bc"
        }
    }
    
    // Read only
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500"
        }
    }
}
