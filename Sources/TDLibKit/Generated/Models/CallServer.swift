//
//  CallServer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-aefbf032
//  https://github.com/tdlib/td/tree/aefbf032
//

import Foundation


/// Describes a server for relaying call data
public struct CallServer: Codable, Equatable, Hashable, Identifiable {

    /// Server identifier
    public let id: TdInt64

    /// Server IPv4 address
    public let ipAddress: String

    /// Server IPv6 address
    public let ipv6Address: String

    /// Server port number
    public let port: Int

    /// Server type
    public let type: CallServerType


    public init(
        id: TdInt64,
        ipAddress: String,
        ipv6Address: String,
        port: Int,
        type: CallServerType
    ) {
        self.id = id
        self.ipAddress = ipAddress
        self.ipv6Address = ipv6Address
        self.port = port
        self.type = type
    }
}

