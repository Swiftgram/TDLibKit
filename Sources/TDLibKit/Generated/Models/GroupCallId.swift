//
//  GroupCallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-1e1ab5d1
//  https://github.com/tdlib/td/tree/1e1ab5d1
//

import Foundation


/// Contains the group call identifier
public struct GroupCallId: Codable, Equatable {

    /// Group call identifier
    public let id: Int


    public init(id: Int) {
        self.id = id
    }
}

