//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by João Bueno on 23/01/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "casa",
        "casa1",
        "casa2",
        "casa3",
        "casa4"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
