//
//  GroupCallId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
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

