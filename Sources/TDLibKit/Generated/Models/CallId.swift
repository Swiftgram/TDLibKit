//
//  CallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
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

