//
//  GetInternalLinkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
public struct GetInternalLinkType: Codable, Equatable, Hashable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

