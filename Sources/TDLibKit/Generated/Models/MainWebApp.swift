//
//  MainWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Contains information about the main Web App of a bot
public struct MainWebApp: Codable, Equatable, Hashable {

    /// The mode in which the Web App must be opened
    public let mode: WebAppOpenMode

    /// URL of the Web App to open
    public let url: String


    public init(
        mode: WebAppOpenMode,
        url: String
    ) {
        self.mode = mode
        self.url = url
    }
}

