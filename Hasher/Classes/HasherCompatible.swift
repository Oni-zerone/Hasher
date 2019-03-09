//
//  Hasher+Data.swift
//  Hasher
//
//  Created by Andrea Altea on 08/03/2019.
//

import Foundation

public protocol HasherCompatible {
    
    associatedtype CompatibleType
    
    var hasher: Hasher<Self> { get set }
    
    var data: Data? { get }
}

extension HasherCompatible {
    
    public var hasher: Hasher<Self> {
        get {
            return Hasher(self)
        }
        set {
            
        }
    }
}

extension String: HasherCompatible {
    public typealias CompatibleType = String
    
    public var data: Data? {
        return self.data(using: .utf8)
    }
}

extension Data: HasherCompatible {
    public typealias CompatibleType = Data
    
    public var data: Data? {
        return self
    }
}
