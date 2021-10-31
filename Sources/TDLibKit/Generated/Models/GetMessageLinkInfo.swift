//
//  GetMessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
public struct GetMessageLinkInfo: Codable {

    /// The message link
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

