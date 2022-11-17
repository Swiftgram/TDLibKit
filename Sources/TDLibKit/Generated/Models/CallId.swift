//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-2e6ac1f2
//  https://github.com/tdlib/td/tree/2e6ac1f2
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

