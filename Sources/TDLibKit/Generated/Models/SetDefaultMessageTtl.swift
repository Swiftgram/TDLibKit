//
//  SetDefaultMessageTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-29752073
//  https://github.com/tdlib/td/tree/29752073
//

import Foundation


/// Changes the default message Time To Live setting (self-destruct timer) for new chats
public struct SetDefaultMessageTtl: Codable, Equatable {

    /// New message TTL; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
    public let ttl: MessageTtl?


    public init(ttl: MessageTtl?) {
        self.ttl = ttl
    }
}

