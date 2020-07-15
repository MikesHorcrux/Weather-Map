//
//  WeatherView.swift
//  Weather Map
//
//  Created by Mike Van Amburg on 7/15/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI
import MapKit

enum LoadingState {
    case loading, loaded, failed
}

struct WeatherView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var placemarker: MKPointAnnotation
    @State private var weather = [Weather]()
    @State private var loadingState = LoadingState.loading
    var body: some View {
        NavigationView{
            VStack{
            Text("Current Weather")
        }
        }
    }
    func fetchNearbyPlaces() {
        let urlString = "api.openweathermap.org/data/2.5/weather?lat={\(placemarker.coordinate.latitude)}&lon={\(placemarker.coordinate.longitude)}&appid={14137244db6f0d246115303b9a89125f}"

        guard let url = URL(string: urlString) else {
            print("Bad URL: \(urlString)")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                // we got some data back!
                let decoder = JSONDecoder()

                if let items = try? decoder.decode(WeatherApi.self, from: data) {
                    // success – convert the array values to our pages array
                    self.weather = Array(arrayLiteral: items.main)
                    self.loadingState = .loaded
                    print("bazinga")
                    return
                }
            }

            // if we're still here it means the request failed somehow
            self.loadingState = .failed
            print("nope")
        }.resume()
    }
}

//struct WeatherView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeatherView( placemarker: MKPointAnnotation)
//    }
//}
