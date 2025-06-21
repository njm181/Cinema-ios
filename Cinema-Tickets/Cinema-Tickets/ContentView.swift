//
//  ContentView.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: DashboardViewModel = DashboardViewModel(getMoviesUseCase: GetMoviesUseCaseImplement(movieRepository: MovieRepositoryImpl(localDataSource: MovieLocalDataSourceImpl())))
    
    var body: some View {
        VStack {
            
            Group {
                List(viewModel.movies, id: \.title) { movie in
                    VStack(alignment: .leading) {
                        Text(movie.title)
                            .font(.headline)
                        
                        Text(movie.genre)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            
            
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .loadingState(loading: $viewModel.isLoading)
        .onAppear {
            Task {
                await viewModel.fetchMovies()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
