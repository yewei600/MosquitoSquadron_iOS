//
//  BannerModel.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-17.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation

struct BannerModel {
    
    var firstName: String
    var lastName: String
    var id: String
    
    init(dictionary: [String:String]) {
        firstName = dictionary["firstName"] ?? ""
        lastName = dictionary["lastName"] ?? ""
        id = dictionary["_id"] ?? ""
    }
}
