//
//  GetPushReceiverId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Returns a globally unique push notification subscription identifier for identification of an account that has received a push notification. Can be called synchronously
public struct GetPushReceiverId: Codable, Equatable, Hashable {

    /// JSON-encoded push notification payload
    public let payload: String?


    public init(payload: String?) {
        self.payload = payload
    }
}

