//
//  DeleteBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
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

