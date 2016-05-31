//
//  PetCell.swift
//  upac
//
//  Created by Daniel Carlos on 5/31/16.
//  Copyright © 2016 CocoaStudies. All rights reserved.
//

import UIKit

class PetCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var size: UILabel!
    
    func setUIWithModel(pet: Pet){
        self.name.text = pet.name
        self.size.text = pet.size.friendlyName
    }
    
}
