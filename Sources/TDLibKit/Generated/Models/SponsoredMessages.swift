//
//  SponsoredMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-fdcb1098
//  https://github.com/tdlib/td/tree/fdcb1098
//

import Foundation


/// Contains a list of sponsored messages
public struct SponsoredMessages: Codable, Equatable {

    /// List of sponsored messages
    public let messages: [SponsoredMessage]


    public init(messages: [SponsoredMessage]) {
        self.messages = messages
    }
}

