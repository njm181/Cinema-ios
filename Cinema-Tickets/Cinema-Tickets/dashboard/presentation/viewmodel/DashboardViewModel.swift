//
//  DashboardViewModel.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

import Foundation
import Combine

@MainActor
class DashboardViewModel: ObservableObject {
    
    @Published var title: String = "Dashboard"
    @Published var movies: [Movie] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?

 
    private let getMoviesUseCase: GetMoviesUseCaseProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(getMoviesUseCase: GetMoviesUseCaseProtocol) {
        self.getMoviesUseCase = getMoviesUseCase
    }
    
    func fetchMovies() async {
        Task {
            self.isLoading = true
            let result = await getMoviesUseCase.getMovies()
            
            switch result {
            case .success(let data):
                try? await Task.sleep(nanoseconds: 2_000_000_000)
                self.movies = data
                self.isLoading = false
                print("Películas obtenidas: \(data)")
            case .failure(let error):
                self.isLoading = false
                self.errorMessage = error.localizedDescription
                print("Error al obtener películas: \(error)")
            }
        }
    }
              
}
