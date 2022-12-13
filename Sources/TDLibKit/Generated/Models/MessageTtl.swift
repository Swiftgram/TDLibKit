//
//  MessageTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-0e331959
//  https://github.com/tdlib/td/tree/0e331959
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

