//
//  GetBackgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns backgrounds installed by the user
public struct GetBackgrounds: Codable {

    /// True, if the backgrounds must be ordered for dark theme
    public let forDarkTheme: Bool?


    public init(forDarkTheme: Bool?) {
        self.forDarkTheme = forDarkTheme
    }
}

