//
//  MapView.swift
//  Weather Map
//
//  Created by Mike Van Amburg on 7/15/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//
import SwiftUI
 import MapKit
struct MapView: UIViewRepresentable{
    // binding for the center of the screen coord
    @Binding var screneCoordinate: CLLocationCoordinate2D
    var annotations: [MKPointAnnotation]
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.delegate = context.coordinator
        return map
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //Adding name of the Location and any information
        if annotations.count != uiView.annotations.count{
            uiView.removeAnnotations(uiView.annotations)
            uiView.addAnnotations(annotations)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapView
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            parent.screneCoordinate = mapView.centerCoordinate
        }
    }
}
