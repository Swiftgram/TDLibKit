//
//  InputFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-9184b3e6
//  https://github.com/tdlib/td/tree/9184b3e6
//

import Foundation


/// Points to a file
public enum InputFile: Codable, Equatable, Hashable {

    /// A file defined by its unique identifier
    case inputFileId(InputFileId)

    /// A file defined by its remote identifier. The remote identifier is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
    case inputFileRemote(InputFileRemote)

    /// A file defined by a local path
    case inputFileLocal(InputFileLocal)

    /// A file generated by the application
    case inputFileGenerated(InputFileGenerated)


    private enum Kind: String, Codable {
        case inputFileId
        case inputFileRemote
        case inputFileLocal
        case inputFileGenerated
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputFileId:
            let value = try InputFileId(from: decoder)
            self = .inputFileId(value)
        case .inputFileRemote:
            let value = try InputFileRemote(from: decoder)
            self = .inputFileRemote(value)
        case .inputFileLocal:
            let value = try InputFileLocal(from: decoder)
            self = .inputFileLocal(value)
        case .inputFileGenerated:
            let value = try InputFileGenerated(from: decoder)
            self = .inputFileGenerated(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputFileId(let value):
            try container.encode(Kind.inputFileId, forKey: .type)
            try value.encode(to: encoder)
        case .inputFileRemote(let value):
            try container.encode(Kind.inputFileRemote, forKey: .type)
            try value.encode(to: encoder)
        case .inputFileLocal(let value):
            try container.encode(Kind.inputFileLocal, forKey: .type)
            try value.encode(to: encoder)
        case .inputFileGenerated(let value):
            try container.encode(Kind.inputFileGenerated, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A file defined by its unique identifier
public struct InputFileId: Codable, Equatable, Hashable, Identifiable {

    /// Unique file identifier
    public let id: Int


    public init(id: Int) {
        self.id = id
    }
}

/// A file defined by its remote identifier. The remote identifier is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
public struct InputFileRemote: Codable, Equatable, Hashable, Identifiable {

    /// Remote file identifier
    public let id: String


    public init(id: String) {
        self.id = id
    }
}

/// A file defined by a local path
public struct InputFileLocal: Codable, Equatable, Hashable {

    /// Local path to the file
    public let path: String


    public init(path: String) {
        self.path = path
    }
}

/// A file generated by the application
public struct InputFileGenerated: Codable, Equatable, Hashable {

    /// String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage
    public let conversion: String

    /// Expected size of the generated file, in bytes; 0 if unknown
    public let expectedSize: Int64

    /// Local path to a file from which the file is generated; may be empty if there is no such file
    public let originalPath: String


    public init(
        conversion: String,
        expectedSize: Int64,
        originalPath: String
    ) {
        self.conversion = conversion
        self.expectedSize = expectedSize
        self.originalPath = originalPath
    }
}

