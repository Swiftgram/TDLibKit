//
//  GetInternalLinkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Returns information about the type of internal link. Returns a 404 error if the link is not internal. Can be called before authorization
public struct GetInternalLinkType: Codable, Equatable, Hashable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

