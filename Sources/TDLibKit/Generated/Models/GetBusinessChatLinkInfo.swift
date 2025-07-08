//
//  GetBusinessChatLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
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

