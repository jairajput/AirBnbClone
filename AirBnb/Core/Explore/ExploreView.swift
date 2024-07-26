//
//  ExploreView.swift
//  AirBnb
//
//  Created by Jai  on 26/07/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:32){
                    ForEach(0..<13){ listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
