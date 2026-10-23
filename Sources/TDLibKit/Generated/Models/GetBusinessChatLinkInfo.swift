//
//  GetBusinessChatLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Returns information about a business chat link
public struct GetBusinessChatLinkInfo: Codable, Equatable, Hashable {

    /// Name of the link
    public let linkName: String?


    public init(linkName: String?) {
        self.linkName = linkName
    }
}

