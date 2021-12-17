//
//  GetBackgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Returns backgrounds installed by the user
public struct GetBackgrounds: Codable, Equatable {

    /// True, if the backgrounds must be ordered for dark theme
    public let forDarkTheme: Bool?


    public init(forDarkTheme: Bool?) {
        self.forDarkTheme = forDarkTheme
    }
}

