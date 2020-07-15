//
//  ContentView.swift
//  Weather Map
//
//  Created by Mike Van Amburg on 7/15/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//
import MapKit
import SwiftUI

struct ContentView: View {
    @State var screenCoordinate = CLLocationCoordinate2D()
    var body: some View {
        ZStack{
            MapView(screneCoordinate: $screenCoordinate)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
