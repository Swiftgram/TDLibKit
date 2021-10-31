//
//  GetPushReceiverId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
public struct GetPushReceiverId: Codable {

    /// JSON-encoded push notification payload
    public let payload: String?


    public init(payload: String?) {
        self.payload = payload
    }
}

