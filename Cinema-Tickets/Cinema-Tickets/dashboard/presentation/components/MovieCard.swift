//
//  MovieCard.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 21/06/2025.
//

import SwiftUI

struct MovieCard: View {
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("Main Title")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background(.blue)
                
                Spacer()
                
                VStack {
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .background(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
    }
}

#Preview {
    MovieCard()
}
