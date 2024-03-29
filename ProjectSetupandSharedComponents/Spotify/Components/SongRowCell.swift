//
//  SongRowCell.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 31/03/24.
//

import SwiftUI

struct SongRowCell: View {
    var imageSize: CGFloat = 50
    var imageName: String = Constants.randomImage
    var title: String = "Some song name goes here"
    var subtitle: String? = "Some artist name"
    var onCellPressed: (() -> Void)? = nil
    var onEllipsisPressed: (() -> Void)? = nil
    
    var body: some View {
        HStack(spacing: 8) {
            ImageLeaderView(urlString: imageName)
                .frame(width: imageSize, height: imageSize)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundStyle(Color(.systemGray2))
                
                if let subtitle {
                    Text(subtitle)
                        .font(.callout)
                        .foregroundStyle(Color(.systemGray2))
                }
            }
            .lineLimit(2)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "ellipsis")
                .font(.subheadline)
                .foregroundStyle(Color.white)
                .padding(16)
                .background(Color.black.opacity(0.001))
                .onTapGesture {
                    onEllipsisPressed?()
                }
        }
        .background(Color.black.opacity(0.0001))
        .onTapGesture {
            onCellPressed?()
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        VStack {
            SongRowCell()
            SongRowCell()
            SongRowCell()
            SongRowCell()

        }
    }
}
