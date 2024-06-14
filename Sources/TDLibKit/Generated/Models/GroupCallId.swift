//
//  GroupCallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-4257a341
//  https://github.com/tdlib/td/tree/4257a341
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

