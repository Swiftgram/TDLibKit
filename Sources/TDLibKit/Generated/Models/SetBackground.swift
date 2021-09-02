//
//  SetBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes the background selected by the user; adds background to the list of installed backgrounds
public struct SetBackground: Codable {

    /// The input background to use. Pass null to create a new filled backgrounds. Pass null to remove the current background
    public let background: InputBackground

    /// True, if the background is chosen for dark theme
    public let forDarkTheme: Bool

    /// Background type. Pass null to use default type of the remote background. Pass null to remove the current background
    public let type: BackgroundType


    public init(
        background: InputBackground,
        forDarkTheme: Bool,
        type: BackgroundType
    ) {
        self.background = background
        self.forDarkTheme = forDarkTheme
        self.type = type
    }
}

