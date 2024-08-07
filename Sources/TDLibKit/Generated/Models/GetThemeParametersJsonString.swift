//
//  GetThemeParametersJsonString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Converts a themeParameters object to corresponding JSON-serialized string. Can be called synchronously
public struct GetThemeParametersJsonString: Codable, Equatable, Hashable {

    /// Theme parameters to convert to JSON
    public let theme: ThemeParameters?


    public init(theme: ThemeParameters?) {
        self.theme = theme
    }
}

