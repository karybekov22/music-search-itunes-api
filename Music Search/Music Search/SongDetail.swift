//
//  SongDetail.swift
//  Music Search
//
//  Created by Nursultan Karybekov on 23/5/21.
//

import SwiftUI

struct SongDetail: View {
    @ObservedObject var song: SongViewModel
    var someRandomUrl : URL = URL(string: "https://itunes.apple.com/search?term=coldplay&entity=song")!
    
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            
            Image(song.artworkUrl)
                .resizable()
                .scaledToFill()
                
            VStack(alignment: .leading) {
                Text(song.trackName)
                Text(song.artistName)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
//            Link(destination: someRandomUrl, label: {
//                StandardButton(title: "Listen Now")
//            })
        }
    }
}

struct MySongView: View {
    let image: Image?
    
    var body: some View {
        
            if image != nil {
                image
            } else {
                Color(.systemIndigo)
                Image(systemName: "music.note")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .cornerRadius(12)
            }
    }
}

struct StandardButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct SongDetail_Previews: PreviewProvider {

    static var previews: some View {
        SongDetail(song: SongViewModel.example)
    }
}
