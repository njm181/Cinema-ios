//
//  GetMoviesUseCase.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

import Foundation

class GetMoviesUseCaseImplement: GetMoviesUseCaseProtocol {
    
    private let movieRepository: MovieRepository
    
    init(movieRepository: MovieRepository) {
        self.movieRepository = movieRepository
    }
    
    func getMovies() async -> Result<[Movie], AppError> {
        do {
            let movies = try await movieRepository.fetchMovies()
            return .success(movies)
        } catch {
            let appError = mapError(error)
            return .failure(appError)
        }
    }
}
