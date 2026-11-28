//
//  ConnectedWebsites.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains a list of websites the current user is logged in to with Telegram
public struct ConnectedWebsites: Codable, Equatable, Hashable {

    /// List of connected websites
    public let websites: [ConnectedWebsite]


    public init(websites: [ConnectedWebsite]) {
        self.websites = websites
    }
}

