//
//  SmallEventCard.swift
//  Raver
//
//  Created by Ottavio Buonomo on 08.09.22.
//

import SwiftUI

struct SmallEventCard: View {
    
    var image: String
    var category: String
    var name: String
    var place: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 75, height: 75)
                            .cornerRadius(10)
                            .padding([.leading, .vertical])
            HStack {
                VStack {
                    Text(name)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(place.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
            Image(systemName: "arrow.forward")
                .foregroundColor(.secondary)
                .padding([.trailing])
            
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2)
        )
        .padding(.horizontal)
    }
}

struct SmallEventCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallEventCard(image: "cardPlaceholder", category: "Music Festival", name: "Tomorrowland 2017", place: "Boom, Belgium")
    }
}
