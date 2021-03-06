//
//  apimodel.swift
//  table view section task
//
//  Created by Vidyashri on 23/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import Foundation

struct vehiclemodel {
    var Make: String
    var Models: [String]
    var collasped: Bool
    init(Make: String, Models: [String]) {
        self.Make = Make
        self.Models = Models
        self.collasped = false
    }
}

struct apimodel: Decodable {
    var Make: String
    var Models: [String]
    init(Make: String, Models: [String]) {
        self.Make = Make
        self.Models = Models
    }
}
