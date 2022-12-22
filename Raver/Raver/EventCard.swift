//
//  EventCard.swift
//  Raver
//
//  Created by Ottavio Buonomo on 08.09.22.
//

import SwiftUI

struct EventCard: View {
    
    var image: String
    var category: String
    var name: String
    var place: String
    
    var body: some View {
        VStack{
            Image(image)
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            .cornerRadius(20)
            .padding([.horizontal, .top])
            .overlay(alignment: .bottom) {
                    
                Rectangle().frame(height: 75)
                    .background(
                        .ultraThinMaterial,
                        in: RoundedRectangle(cornerRadius: 1, style: .continuous)
                    ).opacity(0.8)
                    .cornerRadius(radius: 20, corners: [.bottomLeft, .bottomRight])
                    .padding(.horizontal)
                VStack {
                    Text(name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(place)
                        .foregroundColor(.white)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                    
            }
            HStack {
                HStack {
                    Image("cardPlaceholder1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(25)
                            .overlay(
                                Circle().stroke(.white, lineWidth: 4)
                            )
                            .shadow(color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), radius: 5, x: 0, y: 7)
                            .offset(x: 12.5, y: 0)
                    Image("cardPlaceholder1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(25)
                            .overlay(
                                Circle().stroke(.white, lineWidth: 4)
                            )
                            .shadow(color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), radius: 5, x: 0, y: 7)
                            .offset(x: -12.5, y: 0)
                    Image("cardPlaceholder")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(25)
                            .overlay(
                                Circle().stroke(.white, lineWidth: 4)
                            )
                            .shadow(color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), radius: 5, x: 0, y: 7)
                            .offset(x: -37.5, y: 0)
                }
                .frame(width: 75)
                .padding([.vertical, .leading])
                .padding(.leading)
                Text("+3M")
                    .frame(height: 25)
                    .font(.headline)
                    .padding(.horizontal, 10)
                    .background(Color(.sRGB, red: 224/255, green: 245/255, blue: 229/255, opacity: 1))
                    .foregroundColor(Color(.sRGB, red: 126/255, green: 212/255, blue: 145/255, opacity: 1))
                    .cornerRadius(15)
                    
                Button() {
                    
                } label: {
                    Text("Join Now")
                    Image(systemName: "arrow.forward")
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .padding(.vertical, 10)
                .background(.indigo)
                .foregroundColor(.white)
                .cornerRadius(35)
                .font(.headline)
                .padding(.horizontal)
            }
        }
        .frame(width: .infinity)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 10)
        .padding([.vertical, .leading])
    }
}

struct EventCard_Previews: PreviewProvider {
    static var previews: some View {
        EventCard(image: "cardPlaceholder", category: "Music Festival", name: "Tomorrowland 2017", place: "Boom, Belgium")
    }
}
