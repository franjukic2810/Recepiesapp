//
//  ContentView.swift
//  cooking
//
//  Created by Fran Jukic on 28/06/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home().tabItem {
                     Image(systemName: "play.circle.fill")
                     .font(.system(size: 20))
                     Text("Home")
                    .font(.system(size: 20))
            }.tag(1)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme,.dark)
    }
}
