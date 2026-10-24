//
//  TestProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization
public struct TestProxy: Codable, Equatable, Hashable {

    /// Identifier of a datacenter with which to test connection
    public let dcId: Int?

    /// The proxy to test
    public let proxy: Proxy?

    /// The maximum overall timeout for the request
    public let timeout: Double?


    public init(
        dcId: Int?,
        proxy: Proxy?,
        timeout: Double?
    ) {
        self.dcId = dcId
        self.proxy = proxy
        self.timeout = timeout
    }
}

