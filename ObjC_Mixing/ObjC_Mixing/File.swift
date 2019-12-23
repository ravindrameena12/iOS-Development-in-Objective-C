//
//  File.swift
//  ObjC_Mixing
//
//  Created by Vidyashri on 02/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import Foundation

@objc
public class File: NSObject {
    @objc public var name: String
    @objc public var designation: String
    
    @objc
    public init(name: String, designation: String) {
        self.name = name
        self.designation = designation
    }

    @objc
    public func myMethod() {
        print("Hello Objective-C")
    }
    
}
