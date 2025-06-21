//
//  MovieLocalDataSource.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

import Foundation

final class MovieLocalDataSourceImpl: MovieLocalDataSourceProtocol {
    
    func loadMovies() throws -> [MovieDTO] {
        guard let url = Bundle.main.url(forResource: "movies", withExtension: "json") else {
            throw NSError(domain: "MovieLocalDataSource", code: 1, userInfo: [NSLocalizedDescriptionKey: "JSON file not found"])
        }

        let data = try Data(contentsOf: url)
        let movies = try JSONDecoder().decode([MovieDTO].self, from: data)
        return movies
    }
    
    
}
