//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
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

