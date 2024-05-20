//
//  SecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a secret chat
public struct SecretChat: Codable, Equatable, Hashable, Identifiable {

    /// Secret chat identifier
    public let id: Int

    /// True, if the chat was created by the current user; false otherwise
    public let isOutbound: Bool

    /// Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers
    public let keyHash: Data

    /// Secret chat layer; determines features supported by the chat partner's application. Nested text entities and underline and strikethrough entities are supported if the layer >= 101, files bigger than 2000MB are supported if the layer >= 143, spoiler and custom emoji text entities are supported if the layer >= 144
    public let layer: Int

    /// State of the secret chat
    public let state: SecretChatState

    /// Identifier of the chat partner
    public let userId: Int64


    public init(
        id: Int,
        isOutbound: Bool,
        keyHash: Data,
        layer: Int,
        state: SecretChatState,
        userId: Int64
    ) {
        self.id = id
        self.isOutbound = isOutbound
        self.keyHash = keyHash
        self.layer = layer
        self.state = state
        self.userId = userId
    }
}

