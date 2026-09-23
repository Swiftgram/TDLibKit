//
//  CommunityId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-738ae316
//  https://github.com/tdlib/td/tree/738ae316
//

import Foundation


/// Contains identifier of a community
public struct CommunityId: Codable, Equatable, Hashable, Identifiable {

    /// Community identifier
    public let id: Int64


    public init(id: Int64) {
        self.id = id
    }
}

