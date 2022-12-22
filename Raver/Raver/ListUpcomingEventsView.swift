//
//  ListUpcomingEventsView.swift
//  Raver
//
//  Created by Ottavio Buonomo on 15.09.22.
//

import SwiftUI

struct ListUpcomingEventsView: View {
    
    var events = Array(repeating: 0, count: 10)
    @State private var navBarHidden = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 15) {
                    ForEach(0 ..< events.count, id: \.self) { row in
                        SmallEventCard(image: "cardPlaceholder", category: "Music Festival", name: "Tomorrowland 2022", place: "Boom, Belgium")
                    }
                }
            }
        }.navigationBarTitle("Upcoming events").navigationBarTitleDisplayMode(.large)
    }
}

struct ListUpcomingEventsView_Previews: PreviewProvider {
    static var previews: some View {
        ListUpcomingEventsView()
    }
}
