//
//  ImageTitleRowCell.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 31/03/24.
//

import SwiftUI

struct ImageTitleRowCell: View {
    var imageSize: CGFloat = 100
    var imageName: String = Constants.randomImage
    var title: String = "Some items Naklkljkjlkjlkjljklme"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageLeaderView(urlString: imageName)
                .frame(width: imageSize, height: imageSize)
            
            Text(title)
                .font(.callout)
                .foregroundColor(Color(.systemGray2))
                .lineLimit(2)
                .padding(4)
        }
        .frame(width: imageSize)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ImageTitleRowCell()
    }
}
