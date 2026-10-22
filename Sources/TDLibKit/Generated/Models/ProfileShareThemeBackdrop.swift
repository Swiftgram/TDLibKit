//
//  ProfileShareThemeBackdrop.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Describes a backdrop, which can be used as a theme of the screen for sharing a link to a user or a chat
public struct ProfileShareThemeBackdrop: Codable, Equatable, Hashable, Identifiable {

    /// Colors of the backdrop
    public let colors: UpgradedGiftBackdropColors

    /// Unique identifier of the backdrop
    public let id: Int

    /// Name of the backdrop
    public let name: String


    public init(
        colors: UpgradedGiftBackdropColors,
        id: Int,
        name: String
    ) {
        self.colors = colors
        self.id = id
        self.name = name
    }
}

