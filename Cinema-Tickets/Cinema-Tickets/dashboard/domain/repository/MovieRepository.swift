//
//  MovieRepository.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

protocol MovieRepository {
    func fetchMovies() async throws -> [Movie]
}
