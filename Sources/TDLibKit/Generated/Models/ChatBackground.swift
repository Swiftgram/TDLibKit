//
//  ChatBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
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

