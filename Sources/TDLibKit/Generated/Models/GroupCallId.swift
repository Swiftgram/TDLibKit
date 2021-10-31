//
//  GroupCallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Contains the group call identifier
public struct GroupCallId: Codable {

    /// Group call identifier
    public let id: Int


    public init(id: Int) {
        self.id = id
    }
}

