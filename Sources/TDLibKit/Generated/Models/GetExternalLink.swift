//
//  GetExternalLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed. May return an empty link if just a toast about successful login has to be shown
public struct GetExternalLink: Codable, Equatable, Hashable {

    /// Pass true if the current user allowed the bot that was returned in getExternalLinkInfo, to send them messages
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

