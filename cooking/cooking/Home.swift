//
//  Home.swift
//  cooking
//
//  Created by Fran Jukic on 28/06/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct Home: View {
     @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("accent"))
                    Spacer()
                        .frame(width: 15)
                    Text("Search for food")
                        .foregroundColor(.secondary)
                }
                .frame(width: 300,height: 50)
                .background(Color("background3"))
                .cornerRadius(15)
                .shadow(radius: 10)
                .padding(.top,50)

                HStack {
                    Text("Trending now")
                        .font(.system(size: 25))
                    .foregroundColor(Color("accent"))
                    .bold()
                    
                    Spacer()
                        .frame(width: 170)

                }
                .padding()
                
                VStack(spacing: 25) {
                    ForEach(1..<15){ item in
                        NavigationLink(destination: Text("hi")) {
                            VStack(alignment: .leading) {
                                Text("Brzi kolač")
                                    .font(.title)
                                    .foregroundColor(Color.white)
                                Text("30 minuta")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 330, height: 150)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("accent"), .blue]), startPoint: .top, endPoint: .bottom))
                            .cornerRadius(20)
                            .shadow(radius: 10)
                        }
                    }
                }

            }
        }
        .padding(.top,-80)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left")
        })

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


