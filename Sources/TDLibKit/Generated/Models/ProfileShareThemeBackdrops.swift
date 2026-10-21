//
//  ProfileShareThemeBackdrops.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-74e914ee
//  https://github.com/tdlib/td/tree/74e914ee
//

import Foundation


/// Contains a list of backdrops, which can be used as a theme of the screen for sharing a link to a user or a chat
public struct ProfileShareThemeBackdrops: Codable, Equatable, Hashable {

    /// The list of backdrops
    public let backdrops: [ProfileShareThemeBackdrop]


    public init(backdrops: [ProfileShareThemeBackdrop]) {
        self.backdrops = backdrops
    }
}

