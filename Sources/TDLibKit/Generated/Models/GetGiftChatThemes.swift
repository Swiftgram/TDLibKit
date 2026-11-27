//
//  GetGiftChatThemes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns gift chat themes available to the current user
public struct GetGiftChatThemes: Codable, Equatable, Hashable {

    /// The maximum number of chat themes to return
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use an empty string to get the first chunk of results
    public let offset: String?


    public init(
        limit: Int?,
        offset: String?
    ) {
        self.limit = limit
        self.offset = offset
    }
}

