//
//  PetAPIImpl.swift
//  upac
//
//  Created by Daniel Carlos on 5/31/16.
//  Copyright © 2016 CocoaStudies. All rights reserved.
//

import Foundation

struct PetAPIImpl: PetAPI {
    
    func getAll(_ callBack: (pets: [Pet]) -> Void) {
        //should be something like an asynchronously call to Firebase
        let mocked = [Pet(name: "Michel" , breed: "Husk"   , age: .baby  , gender: .male  , size: .small),
                      Pet(name: "Marcele", breed: "Bulldog", age: .young , gender: .female, size: .large),
                      Pet(name: "Merlin" , breed: "Terrier", age: .senior, gender: .male  , size: .medium)]
        callBack(pets: mocked)
    }
    
}
