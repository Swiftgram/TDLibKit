//
//  AnswerTonConnectRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Sends an answer for a request received through TON Connect
public struct AnswerTonConnectRequest: Codable, Equatable, Hashable {

    /// Body of the response
    public let body: Data?

    /// Identifier of the message with the request
    public let messageId: Int64?

    /// Unique identifier of the TON Connect session
    public let sessionId: TdInt64?

    /// Identifier to trace the request
    public let traceId: String?


    public init(
        body: Data?,
        messageId: Int64?,
        sessionId: TdInt64?,
        traceId: String?
    ) {
        self.body = body
        self.messageId = messageId
        self.sessionId = sessionId
        self.traceId = traceId
    }
}

