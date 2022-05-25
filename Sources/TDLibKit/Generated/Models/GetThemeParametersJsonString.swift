//
//  GetThemeParametersJsonString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c5dfa597
//  https://github.com/tdlib/td/tree/c5dfa597
//

import Foundation


/// Converts a themeParameters object to corresponding JSON-serialized string. Can be called synchronously
public struct GetThemeParametersJsonString: Codable, Equatable {

    /// Theme parameters to convert to JSON
    public let theme: ThemeParameters?


    public init(theme: ThemeParameters?) {
        self.theme = theme
    }
}

