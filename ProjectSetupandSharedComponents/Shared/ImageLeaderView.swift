//
//  ImageLeaderView.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 29/03/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLeaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay(
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: .fill)
                    .allowsHitTesting(false)
            )
            .clipped()
    }
}

#Preview {
    ImageLeaderView()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
}
