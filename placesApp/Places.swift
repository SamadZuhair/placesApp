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
    
    private init() {}
}
