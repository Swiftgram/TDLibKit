//
//  ChatsNearby.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-e79ec946
//  https://github.com/tdlib/td/tree/e79ec946
//

import Foundation


/// Represents a list of chats located nearby
public struct ChatsNearby: Codable, Equatable {

    /// List of location-based supergroups nearby
    public let supergroupsNearby: [ChatNearby]

    /// List of users nearby
    public let usersNearby: [ChatNearby]


    public init(
        supergroupsNearby: [ChatNearby],
        usersNearby: [ChatNearby]
    ) {
        self.supergroupsNearby = supergroupsNearby
        self.usersNearby = usersNearby
    }
}

