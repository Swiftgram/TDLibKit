//
//  GetInternalLinkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-64406035
//  https://github.com/tdlib/td/tree/64406035
//

import Foundation


/// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
public struct GetInternalLinkType: Codable, Equatable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

