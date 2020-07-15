//
//  Data.swift
//  Weather Map
//
//  Created by Mike Van Amburg on 7/15/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import Foundation


struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}
