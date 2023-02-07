//
//  GetThemeParametersJsonString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-3d0140b3
//  https://github.com/tdlib/td/tree/3d0140b3
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

