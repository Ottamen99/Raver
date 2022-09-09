//
//  ContentView.swift
//  Raver
//
//  Created by Ottavio Buonomo on 08.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Upcoming Events")
                    .font(.headline)
                    .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("View All")
                    .font(.headline)
                    .foregroundColor(.indigo)
                .frame(maxWidth: .infinity, alignment: .trailing)
            }.padding([.top, .horizontal])
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    EventCard(image: "cardPlaceholder", category: "Music Festival", name: "Tomorrowland 2017", place: "Boom, Belgium")
                    EventCard(image: "cardPlaceholder1", category: "Music Festival", name: "Ultra Europe 2022", place: "Split, Coratia")
                }
            }.frame(maxWidth: .infinity, maxHeight: 350)
                .padding(.leading)
            
            HStack {
                Text("Next Month Events")
                    .font(.headline)
                    .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("View All")
                    .font(.headline)
                    .foregroundColor(.indigo)
                .frame(maxWidth: .infinity, alignment: .trailing)
            }.padding([.top, .horizontal])
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    SmallEventCard(image: "cardPlaceholder1", category: "Music Festival", name: "Ultra Europe 2023", place: "Split, Coratia")
                    SmallEventCard(image: "cardPlaceholder", category: "Music Festival", name: "Tomorrowland 2023", place: "Boom, Belgium")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
