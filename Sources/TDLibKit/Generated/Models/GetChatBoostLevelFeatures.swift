//
//  GetChatBoostLevelFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-12c1689b
//  https://github.com/tdlib/td/tree/12c1689b
//

import Foundation


/// Returns the list of features available on the specific chat boost level; this is an offline request
public struct GetChatBoostLevelFeatures: Codable, Equatable, Hashable {

    /// Pass true to get the list of features for channels; pass false to get the list of features for supergroups
    public let isChannel: Bool?

    /// Chat boost level
    public let level: Int?


    public init(
        isChannel: Bool?,
        level: Int?
    ) {
        self.isChannel = isChannel
        self.level = level
    }
}

