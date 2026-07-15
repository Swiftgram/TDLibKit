//
//  MainWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Contains information about the main Web App of a bot
public struct MainWebApp: Codable, Equatable, Hashable {

    /// The mode in which the Web App must be opened
    public let mode: WebAppOpenMode

    /// URL of the Web App to open
    public let url: WebAppUrl


    public init(
        mode: WebAppOpenMode,
        url: WebAppUrl
    ) {
        self.mode = mode
        self.url = url
    }
}

