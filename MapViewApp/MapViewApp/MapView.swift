//
//  MapView.swift
//  MapViewApp
//
//  Created by Thomas Sivilay on 28/7/19.
//  Copyright © 2019 Thomas Sivilay. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var landmarks: [Landmark]
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}
