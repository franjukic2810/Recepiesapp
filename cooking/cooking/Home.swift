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
    @State var recepti = receptData
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
                    ForEach(receptData){ item in
                        NavigationLink(destination: ReceptView(recepti: item)) {
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.title)
                                    .foregroundColor(Color.white)
                                Text(item.text)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 330, height: 150)
                            .background(Color(item.color))
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

struct Recepti: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var color: UIColor
}

// postavljamo informacije o varijabli(jer ćemo ih koristiti više puta)
let receptData = [
    Recepti(title: "Tiramisu",text: "1 sat",color: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)),
    Recepti(title: "Pita od sira",text: "2 sata",color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)),
    Recepti(title: "Boem kocke",text: "12 sati",color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)),
    Recepti(title: "Kinder kolač",text: "5 sati",color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
]


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


