//
//  SearchChatsNearby.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-c1fea0f2
//  https://github.com/tdlib/td/tree/c1fea0f2
//

import Foundation


/// Returns a list of users and location-based supergroups nearby. The method was disabled and returns an empty list of chats now
public struct SearchChatsNearby: Codable, Equatable, Hashable {

    /// Current user location
    public let location: Location?


    public init(location: Location?) {
        self.location = location
    }
}

