//
//  SetBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-f64268c5
//  https://github.com/tdlib/td/tree/f64268c5
//

import Foundation


/// Changes the background selected by the user; adds background to the list of installed backgrounds
public struct SetBackground: Codable, Equatable, Hashable {

    /// The input background to use; pass null to create a new filled background or to remove the current background
    public let background: InputBackground?

    /// Pass true if the background is changed for a dark theme
    public let forDarkTheme: Bool?

    /// Background type; pass null to use the default type of the remote background or to remove the current background
    public let type: BackgroundType?


    public init(
        background: InputBackground?,
        forDarkTheme: Bool?,
        type: BackgroundType?
    ) {
        self.background = background
        self.forDarkTheme = forDarkTheme
        self.type = type
    }
}

