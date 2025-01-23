//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by João Bueno on 23/01/25.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        ""
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            
            TabView {
                ForEach(0 ... 3, id: \.self) { image in
                    Rectangle()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("$night")
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
