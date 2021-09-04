//
//  GetBackgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
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
