//
//  ConnectedWebsites.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Contains a list of websites the current user is logged in with Telegram
public struct ConnectedWebsites: Codable, Equatable, Hashable {

    /// List of connected websites
    public let websites: [ConnectedWebsite]


    public init(websites: [ConnectedWebsite]) {
        self.websites = websites
    }
}

