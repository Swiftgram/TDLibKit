//
//  ChatBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Describes a background set for a specific chat
public struct ChatBackground: Codable, Equatable, Hashable {

    /// The background
    public let background: Background

    /// Dimming of the background in dark themes, as a percentage; 0-100. Applied only to Wallpaper and Fill types of background
    public let darkThemeDimming: Int


    public init(
        background: Background,
        darkThemeDimming: Int
    ) {
        self.background = background
        self.darkThemeDimming = darkThemeDimming
    }
}

