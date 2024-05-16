//
//  BusinessChatLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-12c1689b
//  https://github.com/tdlib/td/tree/12c1689b
//

import Foundation


/// Contains a list of business chat links created by the user
public struct BusinessChatLinks: Codable, Equatable, Hashable {

    /// List of links
    public let links: [BusinessChatLink]


    public init(links: [BusinessChatLink]) {
        self.links = links
    }
}

