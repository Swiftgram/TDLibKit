//
//  GetTonConnectSessionPendingRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
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

