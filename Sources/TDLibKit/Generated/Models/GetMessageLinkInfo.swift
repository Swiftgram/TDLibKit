//
//  GetMessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-1da39552
//  https://github.com/tdlib/td/tree/1da39552
//

import Foundation


/// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
public struct GetMessageLinkInfo: Codable, Equatable {

    /// The message link
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

