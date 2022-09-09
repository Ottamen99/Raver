//
//  DetailEventView.swift
//  Raver
//
//  Created by Ottavio Buonomo on 09.09.22.
//

import SwiftUI

struct DetailEventView: View {
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Image("cardPlaceholder")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 300)
                    .cornerRadius(10)
                    .padding()
                HStack {
                    Text("Tomorrowland 2022")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    Button("Free Event") {
                        
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(35)
                    .font(.headline)
                    .padding()
                }
                Text("May 13 2022 - 12:00 AM")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                Text("Description")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                ExpandableText("Lorem ipsum dolor sit amet. Eos quod consectetur sit unde illo eum modi natus sit voluptatum necessitatibus! In dolore repellendus est atque dignissimos ea optio magnam eum maiores dolorum ea reprehenderit quos a molestiae praesentium. Aut iusto internos At consequatur autem At aliquid dolores.", lineLimit: 3)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.horizontal, .bottom])
                HStack {
                    Text("+3M People joined : ")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    HStack {
                        Image("cardPlaceholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                                .overlay(
                                    Circle().stroke(.white, lineWidth: 4)
                                )
                                .shadow(color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), radius: 5, x: 0, y: 7)
                                .offset(x: 37.5, y: 0)
                        Image("cardPlaceholder1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                                .overlay(
                                    Circle().stroke(.white, lineWidth: 4)
                                )
                                .shadow(color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), radius: 5, x: 0, y: 7)
                                .offset(x: 12.5, y: 0)
                        Image("cardPlaceholder1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                                .overlay(
                                    Circle().stroke(.white, lineWidth: 4)
                                )
                                .shadow(color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), radius: 5, x: 0, y: 7)
                                .offset(x: -12.5, y: 0)
                        Image("cardPlaceholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                                .overlay(
                                    Circle().stroke(.white, lineWidth: 4)
                                )
                                .shadow(color: Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), radius: 5, x: 0, y: 7)
                                .offset(x: -37.5, y: 0)
                    }
                    .frame(maxWidth: 150)
                    .padding(.trailing)
                }
                HStack {
                    Button() {
                    } label: {
                        Image(systemName: "bookmark")
                    }
                    .frame(width: 50, height: 50)
                    .foregroundColor(.indigo)
                    .cornerRadius(25)
                    .font(.headline)
                    .overlay(
                        Circle().stroke(.gray, lineWidth: 0.3)
                    )
                    .padding(.leading)
                    Button("Join Now") {
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.vertical)
                    .background(.indigo)
                    .foregroundColor(.white)
                    .cornerRadius(35)
                    .font(.headline)
                    .padding(.horizontal)
                }
                .padding(.top)
                .padding(.top)
            }
            .frame(width: .infinity, height: .infinity)
        }
    }
}

struct DetailEventView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEventView()
    }
}
