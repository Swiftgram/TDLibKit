//
//  GetInternalLinkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
public struct GetInternalLinkType: Codable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

