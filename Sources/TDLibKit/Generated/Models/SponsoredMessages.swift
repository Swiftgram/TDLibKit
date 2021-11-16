//
//  SponsoredMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains a list of sponsored messages
public struct SponsoredMessages: Codable {

    /// List of sponsored messages
    public let messages: [SponsoredMessage]


    public init(messages: [SponsoredMessage]) {
        self.messages = messages
    }
}

