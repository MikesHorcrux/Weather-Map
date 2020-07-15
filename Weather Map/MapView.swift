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
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.delegate = context.coordinator
        return map
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
//        // set coordinates (lat lon)
//        //let coords = CLLocationCoordinate2D(latitude: 53.062640, longitude: -2.968900)
//
//        // set span (radius of points)
//        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
//
//        // set region
//        let region = MKCoordinateRegion( center: context, span: span)
//
//        // set the view
//        uiView.setRegion(region, animated: true)
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
