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
                SearchBarView()
                LazyVStack(spacing:32){
                    ForEach(0..<13){ listing in
                        NavigationLink(value: listing){
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self){listing in
            Text("Hello")
            }
        }
    }
}

#Preview {
    ExploreView()
}
