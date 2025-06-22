//
//  MovieItemCard.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 22/06/2025.
//

import SwiftUI

struct MovieItemCard: View {
    
    let genres = ["Adventure", "Action", "Comedy"]
    
    var body: some View {
        
        VStack {
            Spacer()
            VStack {
                VStack {
                    VStack {
                        // Tu contenido aquí
                        
                    }
                    .frame(maxWidth: 250, maxHeight: 350)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.orange)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                    VStack {
                        Text("Title")
                            .font(.title)
                        
                        VStack(spacing: 8) {
                            ForEach(genres.chunked(into: 3), id: \.self) { row in
                                HStack(spacing: 8) {
                                    ForEach(row, id: \.self) { genre in
                                        GenreTag(title: genre)
                                    }
                                }
                            }
                        }
                        .padding(.top, 8)
                        
                        RatingBar(rating: 9.5)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.pink)
                    
                }

            }
            .frame(maxWidth: 250, maxHeight: 600, alignment: .top)
            .padding(16)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.indigo)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .shadow(radius: 4)
        }
        .ignoresSafeArea()
        .frame(maxHeight: .infinity)

    }
}

#Preview {
    MovieItemCard()
}
