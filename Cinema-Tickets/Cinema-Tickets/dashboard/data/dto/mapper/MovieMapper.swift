//
//  MovieMapper.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

import Foundation

extension MovieDTO {
    func toDomain() -> Movie {
        return Movie(
            title: title,
            year: year,
            rated: rated,
            released: released,
            runtime: runtime,
            genre: genre,
            director: director,
            writer: writer,
            actors: actors,
            plot: plot,
            language: language,
            country: country,
            awards: awards,
            rating: rating,
            boxOffice: boxoffice,
            production: production,
            type: type,
            poster: poster
        )
    }
}
