//
//  MessageTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-d2060a2e
//  https://github.com/tdlib/td/tree/d2060a2e
//

import Foundation


/// Contains default message Time To Live setting (self-destruct timer) for new chats
public struct MessageTtl: Codable, Equatable {

    /// Message TTL setting, in seconds. If 0, then messages aren't deleted automatically
    public let ttl: Int


    public init(ttl: Int) {
        self.ttl = ttl
    }
}

