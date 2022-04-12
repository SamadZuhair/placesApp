//
//  Places.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/12/22.
//

import Foundation


class Places {
    static let shared = Places()
    
    var landmarks:[LandMark] = []
    
    private init() {}
}
