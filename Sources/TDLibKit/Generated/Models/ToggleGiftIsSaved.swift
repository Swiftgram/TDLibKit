//
//  ToggleGiftIsSaved.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Toggles whether a gift is shown on the current user's or the channel's profile page; requires can_post_messages administrator right in the channel chat
public struct ToggleGiftIsSaved: Codable, Equatable, Hashable {

    /// Pass true to display the gift on the user's or the channel's profile page; pass false to remove it from the profile page
    public let isSaved: Bool?

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(
        isSaved: Bool?,
        receivedGiftId: String?
    ) {
        self.isSaved = isSaved
        self.receivedGiftId = receivedGiftId
    }
}

