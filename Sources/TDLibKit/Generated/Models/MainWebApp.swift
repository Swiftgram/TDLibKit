//
//  MainWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-87d88107
//  https://github.com/tdlib/td/tree/87d88107
//

import Foundation


/// Contains information about the main Web App of a bot
public struct MainWebApp: Codable, Equatable, Hashable {

    /// True, if the Web App must always be opened in the compact mode instead of the full-size mode
    public let isCompact: Bool

    /// URL of the Web App to open
    public let url: String


    public init(
        isCompact: Bool,
        url: String
    ) {
        self.isCompact = isCompact
        self.url = url
    }
}

