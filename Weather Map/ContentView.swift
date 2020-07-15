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
    
    //array to save locations
    @State var savedLocals = [MKPointAnnotation]()
    var body: some View {
        ZStack{
            MapView(screneCoordinate: $screenCoordinate, annotations: savedLocals)
                .edgesIgnoringSafeArea(.all)
            Circle()
                .frame(width: 5, height: 5)
                .foregroundColor(.green)
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        //create location
                        let newLocal = MKPointAnnotation()
                        newLocal.title = "Location Example"
                        newLocal.coordinate = self.screenCoordinate
                        self.savedLocals.append(newLocal)
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
