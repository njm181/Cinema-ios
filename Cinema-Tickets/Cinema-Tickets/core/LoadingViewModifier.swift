//
//  LoadingState.swift
//  Cinema-Tickets
//
//  Created by Nico Molina on 20/06/2025.
//

import SwiftUI

struct LoadingViewModifier: ViewModifier {
    @Binding var isLoading: Bool

    func body(content: Content) -> some View {
        if isLoading {
            ProgressView("Loading State...")
                .foregroundColor(.red)
                .background(.yellow)
        } else {
            content
        }
    }
}

extension View {
    func loadingState(loading: Binding<Bool>) -> some View {
        modifier(LoadingViewModifier(isLoading: loading))
    }
}
