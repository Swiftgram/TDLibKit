//
//  Passkey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes a passkey
public struct Passkey: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the passkey was added
    public let additionDate: Int

    /// Unique identifier of the passkey
    public let id: String

    /// Point in time (Unix timestamp) when the passkey was used last time; 0 if never
    public let lastUsageDate: Int

    /// Name of the passkey
    public let name: String

    /// Identifier of the custom emoji that is used as the icon of the software, which created the passkey; 0 if unknown
    public let softwareIconCustomEmojiId: TdInt64


    public init(
        additionDate: Int,
        id: String,
        lastUsageDate: Int,
        name: String,
        softwareIconCustomEmojiId: TdInt64
    ) {
        self.additionDate = additionDate
        self.id = id
        self.lastUsageDate = lastUsageDate
        self.name = name
        self.softwareIconCustomEmojiId = softwareIconCustomEmojiId
    }
}

