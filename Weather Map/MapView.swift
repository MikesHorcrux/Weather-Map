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
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.delegate = context.coordinator
        return map
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //leave empty
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapView
        init(_ parent: MapView) {
            self.parent = parent
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
