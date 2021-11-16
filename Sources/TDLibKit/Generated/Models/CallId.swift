//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains the call identifier
public struct CallId: Codable {

    /// Call identifier
    public let id: Int


    public init(id: Int) {
        self.id = id
    }
}

