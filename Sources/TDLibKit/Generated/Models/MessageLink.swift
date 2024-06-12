//
//  MessageLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Contains an HTTPS link to a message in a supergroup or channel, or a forum topic
public struct MessageLink: Codable, Equatable, Hashable {

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

