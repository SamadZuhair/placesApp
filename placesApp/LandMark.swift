//
//  LandMark.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/12/22.
//

import Foundation
import RealmSwift
class LandMark : Object {
    @objc dynamic var   name : String = ""
    @objc dynamic var des:String = ""
    @objc dynamic var lon : Double = 0.0
    @objc dynamic var lot : Double = 0.0
    @objc dynamic var time : Date = Date()
}
