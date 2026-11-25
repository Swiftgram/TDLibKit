//
//  WebDomainException.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes an exception for built-in browser usage
public struct WebDomainException: Codable, Equatable, Hashable {

    /// Domain of the URL. All URLs on the domain and subdomains of the domain are subject to the exception
    public let domain: String

    /// Identifier of the custom emoji with the favicon of the website; may be 0 if unknown, in which case the first letter of the domain must be used
    public let faviconCustomEmojiId: TdInt64

    /// Title of the website
    public let title: String

    /// URL for which the exception is made
    public let url: String


    public init(
        domain: String,
        faviconCustomEmojiId: TdInt64,
        title: String,
        url: String
    ) {
        self.domain = domain
        self.faviconCustomEmojiId = faviconCustomEmojiId
        self.title = title
        self.url = url
    }
}

