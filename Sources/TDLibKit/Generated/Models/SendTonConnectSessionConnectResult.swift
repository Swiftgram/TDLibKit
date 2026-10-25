//
//  SendTonConnectSessionConnectResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Accepts or rejects a TON Connect session
public struct SendTonConnectSessionConnectResult: Codable, Equatable, Hashable {

    /// Body of the result
    public let body: Data?

    /// Answer to the challenge received from setTonConnectSessionWalletClientId
    public let challengeAnswer: Data?

    /// Pass true to reject the request; pass false to accept it
    public let isError: Bool?

    /// Unique identifier of the session
    public let sessionId: TdInt64?

    /// Identifier to trace the connection request
    public let traceId: String?


    public init(
        body: Data?,
        challengeAnswer: Data?,
        isError: Bool?,
        sessionId: TdInt64?,
        traceId: String?
    ) {
        self.body = body
        self.challengeAnswer = challengeAnswer
        self.isError = isError
        self.sessionId = sessionId
        self.traceId = traceId
    }
}

