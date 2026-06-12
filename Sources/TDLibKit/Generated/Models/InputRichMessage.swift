//
//  InputRichMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// A rich message to send
public struct InputRichMessage: Codable, Equatable, Hashable {

    /// Pass true to enable detection of URLs, email addresses and other automatic blocks
    public let detectAutomaticBlocks: Bool

    /// Pass true if the message must be shown from right to left
    public let isRtl: Bool

    /// Source of the rich message
    public let source: RichMessageSource


    public init(
        detectAutomaticBlocks: Bool,
        isRtl: Bool,
        source: RichMessageSource
    ) {
        self.detectAutomaticBlocks = detectAutomaticBlocks
        self.isRtl = isRtl
        self.source = source
    }
}

