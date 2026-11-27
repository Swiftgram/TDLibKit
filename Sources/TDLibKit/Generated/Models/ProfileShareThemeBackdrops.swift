//
//  ProfileShareThemeBackdrops.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Contains a list of backdrops that can be used as a background of a theme of the screen for sharing a link to a user or a chat
public struct ProfileShareThemeBackdrops: Codable, Equatable, Hashable {

    /// The list of backdrops
    public let backdrops: [ProfileShareThemeBackdrop]


    public init(backdrops: [ProfileShareThemeBackdrop]) {
        self.backdrops = backdrops
    }
}

