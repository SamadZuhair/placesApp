//
//  Places.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/12/22.
//

import Foundation

import RealmSwift
class Places {
    static let shared = Places()
    
    var landmarks:Results<LandMark>!
    
    var userLatitut :Double = 0.0
    var userLongigut:Double = 0.0
    
    private init() {}
}
