//
//  TonConnectRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Represents a session with its pending TON Connect requests
public struct TonConnectRequests: Codable, Equatable, Hashable {

    /// The requests
    public let requests: [TonConnectRequest]

    /// The session
    public let session: TonConnectSession


    public init(
        requests: [TonConnectRequest],
        session: TonConnectSession
    ) {
        self.requests = requests
        self.session = session
    }
}

