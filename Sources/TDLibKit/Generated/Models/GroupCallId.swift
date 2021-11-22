//
//  GroupCallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-743a30d4
//  https://github.com/tdlib/td/tree/743a30d4
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

