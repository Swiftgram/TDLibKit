//
//  GetInternalLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns an HTTPS or a tg: link with the given type. Can be called before authorization
public struct GetInternalLink: Codable, Equatable, Hashable {

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

