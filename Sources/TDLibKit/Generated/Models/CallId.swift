//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-49b3bcbb
//  https://github.com/tdlib/td/tree/49b3bcbb
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

