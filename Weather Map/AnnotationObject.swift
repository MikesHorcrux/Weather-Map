//
//  AnnotationObject.swift
//  Weather Map
//
//  Created by Mike Van Amburg on 7/15/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import Foundation
import MapKit

extension MKPointAnnotation: ObservableObject{
    public var wrappedLocation: String{
        get{
            self.title ?? "Unknown Location"
        }
        set{
            title = newValue
        }
    }
    public var wrappedWeather: String{
        get{
            self.subtitle ?? "Unknown"
        }
        set{
            title = newValue
        }
    }
}
