//
//  GroupCallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Contains the group call identifier
public struct GroupCallId: Codable, Equatable, Hashable, Identifiable {

    /// Group call identifier
    public let id: Int


    public init(id: Int) {
        self.id = id
    }
}

