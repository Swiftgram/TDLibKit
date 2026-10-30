//
//  ClaimTonConnectRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Claims a request received through TON Connect for processing on this device
public struct ClaimTonConnectRequest: Codable, Equatable, Hashable {

    /// Identifier of the request assigned by the dApp
    public let dappRequestId: String?

    /// Pass true to reject the request
    public let isRejected: Bool?

    /// Identifier of the message with the request
    public let messageId: Int64?

    /// Unique identifier of the TON Connect session
    public let sessionId: TdInt64?


    public init(
        dappRequestId: String?,
        isRejected: Bool?,
        messageId: Int64?,
        sessionId: TdInt64?
    ) {
        self.dappRequestId = dappRequestId
        self.isRejected = isRejected
        self.messageId = messageId
        self.sessionId = sessionId
    }
}

