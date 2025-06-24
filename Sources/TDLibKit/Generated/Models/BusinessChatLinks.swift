//
//  BusinessChatLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
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

