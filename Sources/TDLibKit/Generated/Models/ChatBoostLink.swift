//
//  ChatBoostLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Contains an HTTPS link to boost a chat
public struct ChatBoostLink: Codable, Equatable, Hashable {

    /// True, if the link will work for non-members of the chat
    public let isPublic: Bool

    /// The link
    public let link: String


    public init(
        isPublic: Bool,
        link: String
    ) {
        self.isPublic = isPublic
        self.link = link
    }
}

