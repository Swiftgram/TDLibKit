//
//  CallProtocol.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Specifies the supported call protocols
public struct CallProtocol: Codable, Equatable, Hashable {

    /// List of supported tgcalls versions
    public let libraryVersions: [String]

    /// The maximum supported API layer; use 92
    public let maxLayer: Int

    /// The minimum supported API layer; use 65
    public let minLayer: Int

    /// True, if UDP peer-to-peer connections are supported
    public let udpP2p: Bool

    /// True, if connection through UDP reflectors is supported
    public let udpReflector: Bool


    public init(
        libraryVersions: [String],
        maxLayer: Int,
        minLayer: Int,
        udpP2p: Bool,
        udpReflector: Bool
    ) {
        self.libraryVersions = libraryVersions
        self.maxLayer = maxLayer
        self.minLayer = minLayer
        self.udpP2p = udpP2p
        self.udpReflector = udpReflector
    }
}

