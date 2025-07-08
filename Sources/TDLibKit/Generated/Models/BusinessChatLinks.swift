//
//  BusinessChatLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
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

