//
//  ReceptView.swift
//  cooking
//
//  Created by Fran Jukic on 01/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ReceptView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                
                Text("Brzi kolač")
                    .font(.largeTitle)
                    .bold()
                
                Text("30 min")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            .padding(.top,30)
            
            Spacer()
            
            Text("recept")
        }
        .padding(.horizontal,100)
    }
}

struct ReceptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceptView()
    }
}
