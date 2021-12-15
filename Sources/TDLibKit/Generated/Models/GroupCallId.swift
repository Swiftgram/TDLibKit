//
//  GroupCallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-fdcb1098
//  https://github.com/tdlib/td/tree/fdcb1098
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

