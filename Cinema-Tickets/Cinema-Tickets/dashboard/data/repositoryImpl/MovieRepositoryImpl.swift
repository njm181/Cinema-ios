//
//  MovieRepositoryImpl.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

import Foundation

class MovieRepositoryImpl: MovieRepository {
    private let localDataSource: MovieLocalDataSourceProtocol

    init(localDataSource: MovieLocalDataSourceProtocol) {
        self.localDataSource = localDataSource
    }

    func fetchMovies() throws -> [Movie] {
        let dtos = try localDataSource.loadMovies()
        return dtos.map { $0.toDomain() }
    }
}
