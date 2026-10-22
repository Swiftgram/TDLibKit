//
//  GetTonConnectSessionPendingRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Returns pending requests in a TON Connect session
public struct GetTonConnectSessionPendingRequests: Codable, Equatable, Hashable {

    /// Unique identifier of the session
    public let sessionId: TdInt64?


    public init(sessionId: TdInt64?) {
        self.sessionId = sessionId
    }
}

