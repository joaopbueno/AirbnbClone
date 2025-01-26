//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by João Bueno on 26/01/25.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            
            Button {
                show.toggle()
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            Text("Where are")
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
