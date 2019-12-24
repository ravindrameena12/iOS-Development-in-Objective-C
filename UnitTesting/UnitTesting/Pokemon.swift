//
//  Pokemon.swift
//  UnitTesting
//
//  Created by Vidyashri on 03/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import Foundation

public class Pokemon {
    
    public var type : PokemonType
    public var attackType : PokemonAttackType
    public var health : Int = 100
    
    public init( type : PokemonType, attackType : PokemonAttackType ) {
        self.type = type
        self.attackType = attackType
    }
    
    public func attack( enemy : Pokemon ) {
        
        var damage = 30
        
        if enemy.type == .Fire && attackType == .Water {
            damage = 60
        }
        
        if enemy.type == .Water && attackType == .Fire {
            damage = 10
        }
        
        enemy.health = enemy.health - damage
        
    }
    
}

public enum PokemonType {
    case Neutral
    case Fire
    case Water
}

public enum PokemonAttackType {
    case Normal
    case Fire
    case Water
}
