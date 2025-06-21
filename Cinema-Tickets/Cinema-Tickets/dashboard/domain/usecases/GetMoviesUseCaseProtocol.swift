//
//    GetMoviesUseCaseProtocol.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

protocol GetMoviesUseCaseProtocol {
    func getMovies() async -> Result<[Movie], AppError>
}
