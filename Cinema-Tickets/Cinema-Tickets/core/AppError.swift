//
//  AppError.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 16/06/2025.
//

import Foundation

enum AppError: Error {
    case network
    case decoding
    case notFound
    case unauthorized
    case unknown
}

func mapError(_ error: Error) -> AppError {
    if let urlError = error as? URLError {
        return .network
    } else if let decodingError = error as? DecodingError {
        return .decoding
    } else if let appError = error as? AppError {
        return appError
    } else {
        return .unknown
    }
}
