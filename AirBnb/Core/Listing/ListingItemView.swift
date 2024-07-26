//
//  ListingItemView.swift
//  AirBnb
//
//  Created by Jai  on 26/07/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [ //Demo Item To Show The images
        "image-1",
        "image-2",
        "image-3"
    ]
    var body: some View {
        VStack{
            //Images
            TabView{
                ForEach(images, id: \.self){image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
            
            HStack(alignment: .top){ // Data List
                VStack(alignment: .leading){
                    Text("Miami Florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - Nov 20")
                        .foregroundStyle(.gray)
                    HStack(spacing:4){
                        Text("567")
                            .fontWeight(.semibold)
                        Text("Night")
                    }
                }
                Spacer()
                HStack{
                    Image(systemName: "star.fill")
                    Text("4.8")
                }
            }
            .font(.footnote)
        }/*.padding()*/
    }
}

#Preview {
    ListingItemView()
}
