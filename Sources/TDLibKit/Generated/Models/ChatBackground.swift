//
//  ChatBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-0150094c
//  https://github.com/tdlib/td/tree/0150094c
//

import Foundation


/// Describes a background set for a specific chat
public struct ChatBackground: Codable, Equatable {

    /// The background
    public let background: Background

    /// Dimming of the background in dark themes, as a percentage; 0-100
    public let darkThemeDimming: Int


    public init(
        background: Background,
        darkThemeDimming: Int
    ) {
        self.background = background
        self.darkThemeDimming = darkThemeDimming
    }
}

