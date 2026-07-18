//
//  RichMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// Describes a message with rich formatting
public struct RichMessage: Codable, Equatable, Hashable {

    /// Content of the message
    public let blocks: [PageBlock]

    /// True, if the object contains the full message. Otherwise, getFullRichMessage must be used to get the full message
    public let isFull: Bool

    /// True, if the message must be shown from right to left
    public let isRtl: Bool


    public init(
        blocks: [PageBlock],
        isFull: Bool,
        isRtl: Bool
    ) {
        self.blocks = blocks
        self.isFull = isFull
        self.isRtl = isRtl
    }
}

