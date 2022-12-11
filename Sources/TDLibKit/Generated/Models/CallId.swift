//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-8ee04b37
//  https://github.com/tdlib/td/tree/8ee04b37
//

import Foundation


/// Contains the call identifier
public struct CallId: Codable, Equatable {

    /// Call identifier
    public let id: Int


    public init(id: Int) {
        self.id = id
    }
}

