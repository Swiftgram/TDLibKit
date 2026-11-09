//
//  SponsoredChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Contains a list of sponsored chats
public struct SponsoredChats: Codable, Equatable, Hashable {

    /// List of sponsored chats
    public let chats: [SponsoredChat]


    public init(chats: [SponsoredChat]) {
        self.chats = chats
    }
}

