//
//  ContentView.swift
//  MapViewApp
//
//  Created by Thomas Sivilay on 28/7/19.
//  Copyright © 2019 Thomas Sivilay. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark {
    let id = UUID().uuidString
    let name: String
    let location: CLLocationCoordinate2D
}

struct ContentView: View {
    @State var landmarks: [Landmark] = [
        Landmark(name: "Sydney Harbour Bridge", location: .init(latitude: -33.852222, longitude: 151.210556)),
        Landmark(name: "Brooklyn Bridge", location: .init(latitude: 40.706, longitude: -73.997))
    ]
    
    var body: some View {
        MapView(landmarks: $landmarks).edgesIgnoringSafeArea(.vertical)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
