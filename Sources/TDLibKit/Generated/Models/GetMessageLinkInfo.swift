//
//  GetMessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
public struct GetMessageLinkInfo: Codable, Equatable, Hashable {

    /// The message link
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

