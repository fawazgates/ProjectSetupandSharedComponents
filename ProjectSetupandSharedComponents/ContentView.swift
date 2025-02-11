//
//  ContentView.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 29/03/24.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        List {
            Button("Open Spotify") {
                router.showScreen(.fullScreenCover) { router in
                    SpotifyHomeView(viewModel: SpotifyHomeViewModel(router: router))
                }
            }
        }
    }
}

#Preview {
    RouterView { _ in
       ContentView()
    }
}
