//
//  ReceptView.swift
//  cooking
//
//  Created by Fran Jukic on 01/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ReceptView: View {
    var recepti: Recepti
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 100)
                           
                VStack(alignment: .leading) {
                               
                    Text(recepti.title)
                    .font(.largeTitle)
                    .bold()
                               
                    Text(recepti.text)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                               
                }
                .padding(.top,30)
            }
            .frame(width: 500, height: 300)
            .background(Color(recepti.color))
            .edgesIgnoringSafeArea(.all)
            .cornerRadius(100)
            .shadow(color: Color(recepti.color),radius: 10)
            .padding(.top,-50)

            Spacer()
                .frame(height: 50)
            
            Text("recept")

        }
        .padding(.horizontal,100)
    }
}

struct ReceptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceptView(recepti: receptData[0])
    }
}
