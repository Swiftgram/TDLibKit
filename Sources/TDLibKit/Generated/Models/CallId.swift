//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Contains the call identifier
public struct CallId: Codable, Equatable, Hashable, Identifiable {

    /// Call identifier
    public let id: Int


    public init(id: Int) {
        self.id = id
    }
}

