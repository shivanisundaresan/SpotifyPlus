//
//  Home.swift
//  Spotify+
//
//  Created by Shivani on 10/27/22.
//

import SwiftUI


struct Home: View {
    var artists = ["drake", "kid cudi", "red hot chili peppers", "steve lacy"]
    var body: some View {
        NavigationView {
            VStack{
                //go to artists page
                NavigationLink(destination:Artists()){
                    Text("Artists").font(.title).navigationTitle("Spotify+").foregroundColor(.black).underline()
                }
//                HStack(alignment: .center, spacing: 30) {
//                    ForEach(0..<artists.count) { i in
//                        artists[i]
//                            .frame(width: 250, height: 400, alignment: .center)
//                            .cornerRadius(10)
//                    }
//                }.modifier(ScrollingHStackModifier(items: artists.count, itemWidth: 250, itemSpacing: 30))
                Text("Songs").font(.title)
                Spacer().frame(height:100)
                Text("Playlists").font(.title)
                Spacer().frame(height:100)
                Text("Albums").font(.title)
                Spacer().frame(height:100)
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(20)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
