//
//  GetPushReceiverId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-aa8a4979
//  https://github.com/tdlib/td/tree/aa8a4979
//

import Foundation


/// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
public struct GetPushReceiverId: Codable, Equatable {

    /// JSON-encoded push notification payload
    public let payload: String?


    public init(payload: String?) {
        self.payload = payload
    }
}

