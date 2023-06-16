//
//  NetworkStatisticsEntry.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-66234ae2
//  https://github.com/tdlib/td/tree/66234ae2
//

import Foundation


/// Contains statistics about network usage
public enum NetworkStatisticsEntry: Codable, Equatable, Hashable {

    /// Contains information about the total amount of data that was used to send and receive files
    case networkStatisticsEntryFile(NetworkStatisticsEntryFile)

    /// Contains information about the total amount of data that was used for calls
    case networkStatisticsEntryCall(NetworkStatisticsEntryCall)


    private enum Kind: String, Codable {
        case networkStatisticsEntryFile
        case networkStatisticsEntryCall
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .networkStatisticsEntryFile:
            let value = try NetworkStatisticsEntryFile(from: decoder)
            self = .networkStatisticsEntryFile(value)
        case .networkStatisticsEntryCall:
            let value = try NetworkStatisticsEntryCall(from: decoder)
            self = .networkStatisticsEntryCall(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .networkStatisticsEntryFile(let value):
            try container.encode(Kind.networkStatisticsEntryFile, forKey: .type)
            try value.encode(to: encoder)
        case .networkStatisticsEntryCall(let value):
            try container.encode(Kind.networkStatisticsEntryCall, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Contains information about the total amount of data that was used to send and receive files
public struct NetworkStatisticsEntryFile: Codable, Equatable, Hashable {

    /// Type of the file the data is part of; pass null if the data isn't related to files
    public let fileType: FileType?

    /// Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
    public let networkType: NetworkType

    /// Total number of bytes received
    public let receivedBytes: Int64

    /// Total number of bytes sent
    public let sentBytes: Int64


    public init(
        fileType: FileType?,
        networkType: NetworkType,
        receivedBytes: Int64,
        sentBytes: Int64
    ) {
        self.fileType = fileType
        self.networkType = networkType
        self.receivedBytes = receivedBytes
        self.sentBytes = sentBytes
    }
}

/// Contains information about the total amount of data that was used for calls
public struct NetworkStatisticsEntryCall: Codable, Equatable, Hashable {

    /// Total call duration, in seconds
    public let duration: Double

    /// Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
    public let networkType: NetworkType

    /// Total number of bytes received
    public let receivedBytes: Int64

    /// Total number of bytes sent
    public let sentBytes: Int64


    public init(
        duration: Double,
        networkType: NetworkType,
        receivedBytes: Int64,
        sentBytes: Int64
    ) {
        self.duration = duration
        self.networkType = networkType
        self.receivedBytes = receivedBytes
        self.sentBytes = sentBytes
    }
}

