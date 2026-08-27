//
//  InputRichMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// A rich message to send. Total length of all texts, including custom emoji alternative text and formula source, must not exceed getOption("rich_message_text_length_max"). The total number of all blocks, list items and table rows must not exceed getOption("rich_message_block_count_max"). The maximum allowed depth of nested blocks and rich texts is getOption("rich_message_depth_max"). The total number of media in all blocks must not exceed getOption("rich_message_media_count_max"). The maximum allowed number of table columns is getOption("rich_message_table_column_count_max")
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

