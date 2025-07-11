//
//  DeleteBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Deletes a business chat link of the current account
public struct DeleteBusinessChatLink: Codable, Equatable, Hashable {

    /// The link to delete
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

