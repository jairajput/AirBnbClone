//
//  SearchBarView.swift
//  AirBnb
//
//  Created by Jai  on 26/07/24.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "magnifyingglass")
                VStack(alignment:.leading,spacing: 2){
                    Text("Where to?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Anywhere.AnyWeek.Add guest")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
    
            }
            .padding(.horizontal)
            .padding(.vertical,10)
            .padding(.trailing,50)

            .overlay{
                Capsule()
                    .stroke(lineWidth: 0.3)
                    .foregroundStyle(Color(.systemGray))
                    .shadow(color: .black.opacity(0.4),radius: 10)
        }
            Button(action: {}, label: {
                Image(systemName: "slider.horizontal.3")
                    .foregroundStyle(.black)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 0.5)
                            .foregroundStyle(.gray)
                    }
            })
        }
        .padding(.vertical,10)

    }
}

#Preview {
    SearchBarView()
}
