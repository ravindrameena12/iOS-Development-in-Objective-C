//
//  CarClass.swift
//  UI
//
//  Created by Vidyashri on 19/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import Foundation

class CarClass {
    var image: String
    var carName: String
    var phoneNumber: String
    var carDate: String
    var totalVehicle: String
    init(image: String, carName: String, phoneNumber: String, carDate: String, totalVehicle: String) {
        self.image = image
        self.carName = carName
        self.phoneNumber = phoneNumber
        self.carDate = carDate
        self.totalVehicle = totalVehicle
    }
}
