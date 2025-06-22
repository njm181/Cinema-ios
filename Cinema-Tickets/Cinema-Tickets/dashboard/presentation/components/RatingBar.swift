//
//  RatingBar.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 22/06/2025.
//

import SwiftUI

struct RatingBar: View {
    
    let rating: Double
    
    var body: some View {
        
        HStack(spacing: 4) {
            Text("9.5")
                .font(.caption)
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 10, height: 10)
                .foregroundColor(.yellow)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(.red)
        .padding(8)
    }
}

#Preview {
    RatingBar(rating: 4.3)
}
