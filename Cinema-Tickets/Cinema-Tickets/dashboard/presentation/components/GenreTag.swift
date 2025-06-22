//
//  GenreFrame.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 22/06/2025.
//

import SwiftUI

struct GenreTag: View {
    
    let title: String
    
    var body: some View {
        
        VStack {
            Text(title)
                .font(.caption)
        }
        .padding(8)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 1)
        )
        
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}

#Preview {
    GenreTag(title: "Adventure")
}
