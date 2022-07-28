//
//  GetExternalLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed
public struct GetExternalLink: Codable, Equatable {

    /// Pass true if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages
    public let allowWriteAccess: Bool?

    /// The HTTP link
    public let link: String?


    public init(
        allowWriteAccess: Bool?,
        link: String?
    ) {
        self.allowWriteAccess = allowWriteAccess
        self.link = link
    }
}

