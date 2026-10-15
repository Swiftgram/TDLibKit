//
//  CommunityId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
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

