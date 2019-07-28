//
//  MapView.swift
//  MapViewApp
//
//  Created by Thomas Sivilay on 28/7/19.
//  Copyright © 2019 Thomas Sivilay. All rights reserved.
//

import SwiftUI
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    let id: String
    let name: String
    let coordinate: CLLocationCoordinate2D

    init(landmark: Landmark) {
        self.id = landmark.id
        self.name = landmark.name
        self.coordinate = landmark.location
    }
}

struct MapView: UIViewRepresentable {
    @Binding var landmarks: [Landmark]
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        updateAnnotations(from: uiView)
    }
    
    private func updateAnnotations(from mapView: MKMapView) {
        mapView.removeAnnotations(mapView.annotations)
        let newAnnotations = landmarks.map { LandmarkAnnotation(landmark: $0) }
        mapView.addAnnotations(newAnnotations)
    }
}
