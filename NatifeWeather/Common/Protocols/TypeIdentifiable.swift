//
//  TypeIdentifiable.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

public protocol TypeIdentifiable {
    static var typeName: String { get }
    static var nibName: String { get }
    static var nib: UINib { get }
}

public extension TypeIdentifiable {
    
    static var typeName: String {
        return String(describing: self)
    }
    
    static var nibName: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: self.typeName, bundle: nil)
    }
    
    static func loadNib() -> Self {
        let nib = UINib(
            nibName: nibName,
            bundle: nil
        )
            .instantiate(withOwner: Self.self, options: nil)
            .first
        
        guard let result = nib as? Self else {
            fatalError("Unable to load nib for \(nibName)")
        }
        
        return result
    }
}
