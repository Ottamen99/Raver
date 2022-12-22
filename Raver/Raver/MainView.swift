//
//  MainView.swift
//  Raver
//
//  Created by Ottavio Buonomo on 13.09.22.
//

import SwiftUI

struct MainView: View {
    
    @Binding var showMenu: Bool
    @State private var selectedTab: Int = 0
    let tabs: [Tab] = [
        .init(icon: Image(systemName: ""), title: "Today"),
        .init(icon: Image(systemName: ""), title: "Tomorrow")
    ]
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    HStack {
                        Text("Upcoming Events")
                            .font(.headline)
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        NavigationLink(destination: ListUpcomingEventsView()) {
                            Text("View All")
                                .font(.headline)
                                .foregroundColor(.indigo)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    }.padding([.top, .horizontal])
                    TabsView(tabs: tabs, geoWidth: geo.size.width / 1.5, selectedTab: $selectedTab)
                    TabView(selection: $selectedTab,
                        content: {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    EventCard(image: "cardPlaceholder", category: "Music Festival", name: "Tomorrowland 2017", place: "Boom, Belgium")
                                    EventCard(image: "cardPlaceholder1", category: "Music Festival", name: "Ultra Europe 2022", place: "Split, Coratia")
                                }
                            }
                            .frame(maxWidth: .infinity, maxHeight: 350)
                            
                            .tag(0)
                        
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    EventCard(image: "cardPlaceholder1", category: "Music Festival", name: "Ultra Europe 2022", place: "Split, Coratia")
                                    EventCard(image: "cardPlaceholder", category: "Music Festival", name: "Tomorrowland 2017", place: "Boom, Belgium")
                                }
                            }
                            .frame(maxWidth: .infinity, maxHeight: 350)
                            .tag(1)
                        })
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .frame(height: 325)
                    
                    
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
    }
}

struct MainView_Previews: PreviewProvider {
    
    @State static var value = false
    
    static var previews: some View {
        MainView(showMenu: $value)
    }
}
