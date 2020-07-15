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
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        //create location
                    }){
                        Image(systemName: "plus.circle.fill")
                    }
                    .padding()
                    .foregroundColor(.purple)
                    .font(.largeTitle)
                    .padding(.trailing)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
