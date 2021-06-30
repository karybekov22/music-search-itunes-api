//
//  Music_SearchApp.swift
//  Music Search
//
//  Created by Nursultan Karybekov on 22/5/21.
//

import SwiftUI

@main
struct Music_SearchApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: SongListViewModel())
        }
    }
}
