//
//  MovieLocalDataSourceProtocol.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

protocol MovieLocalDataSourceProtocol {
    func loadMovies() throws -> [MovieDTO]
}
