//
//  GetInternalLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Returns an HTTPS or a tg: link with the given type. Can be called before authorization
public struct GetInternalLink: Codable, Equatable {

    /// Pass true to create an HTTPS link (only available for some link types); pass false to create a tg: link
    public let isHttp: Bool?

    /// Expected type of the link
    public let type: InternalLinkType?


    public init(
        isHttp: Bool?,
        type: InternalLinkType?
    ) {
        self.isHttp = isHttp
        self.type = type
    }
}

