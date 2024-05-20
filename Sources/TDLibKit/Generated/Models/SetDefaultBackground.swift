//
//  SetDefaultBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets default background for chats; adds the background to the list of installed backgrounds
public struct SetDefaultBackground: Codable, Equatable, Hashable {

    /// The input background to use; pass null to create a new filled background
    public let background: InputBackground?

    /// Pass true if the background is set for a dark theme
    public let forDarkTheme: Bool?

    /// Background type; pass null to use the default type of the remote background; backgroundTypeChatTheme isn't supported
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

