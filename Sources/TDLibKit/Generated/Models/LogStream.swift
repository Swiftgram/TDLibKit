//
//  LogStream.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a stream to which TDLib internal log is written
public indirect enum LogStream: Codable, Equatable, Hashable {

    /// The log is written to stderr or an OS specific log
    case logStreamDefault

    /// The log is written to a file
    case logStreamFile(LogStreamFile)

    /// The log is written nowhere
    case logStreamEmpty


    private enum Kind: String, Codable {
        case logStreamDefault
        case logStreamFile
        case logStreamEmpty
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .logStreamDefault:
            self = .logStreamDefault
        case .logStreamFile:
            let value = try LogStreamFile(from: decoder)
            self = .logStreamFile(value)
        case .logStreamEmpty:
            self = .logStreamEmpty
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .logStreamDefault:
            try container.encode(Kind.logStreamDefault, forKey: .type)
        case .logStreamFile(let value):
            try container.encode(Kind.logStreamFile, forKey: .type)
            try value.encode(to: encoder)
        case .logStreamEmpty:
            try container.encode(Kind.logStreamEmpty, forKey: .type)
        }
    }
}

/// The log is written to a file
public struct LogStreamFile: Codable, Equatable, Hashable {

    /// The maximum size of the file to where the internal TDLib log is written before the file will automatically be rotated, in bytes
    public let maxFileSize: Int64

    /// Path to the file to where the internal TDLib log will be written
    public let path: String

    /// Pass true to additionally redirect stderr to the log file. Ignored on Windows
    public let redirectStderr: Bool


    public init(
        maxFileSize: Int64,
        path: String,
        redirectStderr: Bool
    ) {
        self.maxFileSize = maxFileSize
        self.path = path
        self.redirectStderr = redirectStderr
    }
}

