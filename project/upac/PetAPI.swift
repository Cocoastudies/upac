//
//  PetAPI.swift
//  upac
//
//  Created by Daniel Carlos on 5/31/16.
//  Copyright © 2016 CocoaStudies. All rights reserved.
//

import Foundation

protocol PetAPI{
    
    //will get all pets and inform the callback
    func getAll(callBack: (pets: [Pet]) -> Void) -> Void
}