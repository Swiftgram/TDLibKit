//
//  PushReceiverId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification
public struct PushReceiverId: Codable, Equatable {

    /// The globally unique identifier of push notification subscription
    public let id: TdInt64


    public init(id: TdInt64) {
        self.id = id
    }
}

