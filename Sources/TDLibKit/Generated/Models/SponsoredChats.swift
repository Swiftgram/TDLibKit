//
//  SponsoredChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
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

