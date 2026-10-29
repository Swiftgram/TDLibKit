//
//  TonConnectRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Represents a pending TON Connect request
public struct TonConnectRequest: Codable, Equatable, Hashable {

    /// Body of the request
    public let body: Data

    /// Point in time (Unix timestamp) when the request will expire; 0 if never
    public let expirationDate: Int

    /// Unique identifier of the service message in the chat 777000 with the request
    public let messageId: Int64

    /// Unique identifier of the session
    public let sessionId: TdInt64

    /// Topic of the request; may be empty if none
    public let topic: String

    /// Identifier to trace the request; may be empty if none
    public let traceId: String


    public init(
        body: Data,
        expirationDate: Int,
        messageId: Int64,
        sessionId: TdInt64,
        topic: String,
        traceId: String
    ) {
        self.body = body
        self.expirationDate = expirationDate
        self.messageId = messageId
        self.sessionId = sessionId
        self.topic = topic
        self.traceId = traceId
    }
}

