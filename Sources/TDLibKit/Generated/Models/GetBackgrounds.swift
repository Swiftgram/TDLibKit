//
//  GetBackgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Returns backgrounds installed by the user
public struct GetBackgrounds: Codable {

    /// True, if the backgrounds must be ordered for dark theme
    public let forDarkTheme: Bool


    public init(forDarkTheme: Bool) {
        self.forDarkTheme = forDarkTheme
    }
}

