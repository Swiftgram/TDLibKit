//
//  ConnectedWebsites.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
//

import Foundation


/// Contains a list of websites the current user is logged in with Telegram
public struct ConnectedWebsites: Codable, Equatable {

    /// List of connected websites
    public let websites: [ConnectedWebsite]


    public init(websites: [ConnectedWebsite]) {
        self.websites = websites
    }
}

