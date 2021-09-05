//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
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

