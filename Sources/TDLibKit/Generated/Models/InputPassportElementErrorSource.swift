//
//  InputPassportElementErrorSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains the description of an error in a Telegram Passport element; for bots only
public indirect enum InputPassportElementErrorSource: Codable, Equatable, Hashable {

    /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
    case inputPassportElementErrorSourceUnspecified(InputPassportElementErrorSourceUnspecified)

    /// A data field contains an error. The error is considered resolved when the field's value changes
    case inputPassportElementErrorSourceDataField(InputPassportElementErrorSourceDataField)

    /// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes
    case inputPassportElementErrorSourceFrontSide(InputPassportElementErrorSourceFrontSide)

    /// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes
    case inputPassportElementErrorSourceReverseSide(InputPassportElementErrorSourceReverseSide)

    /// The selfie contains an error. The error is considered resolved when the file with the selfie changes
    case inputPassportElementErrorSourceSelfie(InputPassportElementErrorSourceSelfie)

    /// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes
    case inputPassportElementErrorSourceTranslationFile(InputPassportElementErrorSourceTranslationFile)

    /// The translation of the document contains an error. The error is considered resolved when the list of files changes
    case inputPassportElementErrorSourceTranslationFiles(InputPassportElementErrorSourceTranslationFiles)

    /// The file contains an error. The error is considered resolved when the file changes
    case inputPassportElementErrorSourceFile(InputPassportElementErrorSourceFile)

    /// The list of attached files contains an error. The error is considered resolved when the file list changes
    case inputPassportElementErrorSourceFiles(InputPassportElementErrorSourceFiles)


    private enum Kind: String, Codable {
        case inputPassportElementErrorSourceUnspecified
        case inputPassportElementErrorSourceDataField
        case inputPassportElementErrorSourceFrontSide
        case inputPassportElementErrorSourceReverseSide
        case inputPassportElementErrorSourceSelfie
        case inputPassportElementErrorSourceTranslationFile
        case inputPassportElementErrorSourceTranslationFiles
        case inputPassportElementErrorSourceFile
        case inputPassportElementErrorSourceFiles
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputPassportElementErrorSourceUnspecified:
            let value = try InputPassportElementErrorSourceUnspecified(from: decoder)
            self = .inputPassportElementErrorSourceUnspecified(value)
        case .inputPassportElementErrorSourceDataField:
            let value = try InputPassportElementErrorSourceDataField(from: decoder)
            self = .inputPassportElementErrorSourceDataField(value)
        case .inputPassportElementErrorSourceFrontSide:
            let value = try InputPassportElementErrorSourceFrontSide(from: decoder)
            self = .inputPassportElementErrorSourceFrontSide(value)
        case .inputPassportElementErrorSourceReverseSide:
            let value = try InputPassportElementErrorSourceReverseSide(from: decoder)
            self = .inputPassportElementErrorSourceReverseSide(value)
        case .inputPassportElementErrorSourceSelfie:
            let value = try InputPassportElementErrorSourceSelfie(from: decoder)
            self = .inputPassportElementErrorSourceSelfie(value)
        case .inputPassportElementErrorSourceTranslationFile:
            let value = try InputPassportElementErrorSourceTranslationFile(from: decoder)
            self = .inputPassportElementErrorSourceTranslationFile(value)
        case .inputPassportElementErrorSourceTranslationFiles:
            let value = try InputPassportElementErrorSourceTranslationFiles(from: decoder)
            self = .inputPassportElementErrorSourceTranslationFiles(value)
        case .inputPassportElementErrorSourceFile:
            let value = try InputPassportElementErrorSourceFile(from: decoder)
            self = .inputPassportElementErrorSourceFile(value)
        case .inputPassportElementErrorSourceFiles:
            let value = try InputPassportElementErrorSourceFiles(from: decoder)
            self = .inputPassportElementErrorSourceFiles(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputPassportElementErrorSourceUnspecified(let value):
            try container.encode(Kind.inputPassportElementErrorSourceUnspecified, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceDataField(let value):
            try container.encode(Kind.inputPassportElementErrorSourceDataField, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceFrontSide(let value):
            try container.encode(Kind.inputPassportElementErrorSourceFrontSide, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceReverseSide(let value):
            try container.encode(Kind.inputPassportElementErrorSourceReverseSide, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceSelfie(let value):
            try container.encode(Kind.inputPassportElementErrorSourceSelfie, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceTranslationFile(let value):
            try container.encode(Kind.inputPassportElementErrorSourceTranslationFile, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceTranslationFiles(let value):
            try container.encode(Kind.inputPassportElementErrorSourceTranslationFiles, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceFile(let value):
            try container.encode(Kind.inputPassportElementErrorSourceFile, forKey: .type)
            try value.encode(to: encoder)
        case .inputPassportElementErrorSourceFiles(let value):
            try container.encode(Kind.inputPassportElementErrorSourceFiles, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
public struct InputPassportElementErrorSourceUnspecified: Codable, Equatable, Hashable {

    /// Current hash of the entire element
    public let elementHash: Data


    public init(elementHash: Data) {
        self.elementHash = elementHash
    }
}

/// A data field contains an error. The error is considered resolved when the field's value changes
public struct InputPassportElementErrorSourceDataField: Codable, Equatable, Hashable {

    /// Current data hash
    public let dataHash: Data

    /// Field name
    public let fieldName: String


    public init(
        dataHash: Data,
        fieldName: String
    ) {
        self.dataHash = dataHash
        self.fieldName = fieldName
    }
}

/// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes
public struct InputPassportElementErrorSourceFrontSide: Codable, Equatable, Hashable {

    /// Current hash of the file containing the front side
    public let fileHash: Data


    public init(fileHash: Data) {
        self.fileHash = fileHash
    }
}

/// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes
public struct InputPassportElementErrorSourceReverseSide: Codable, Equatable, Hashable {

    /// Current hash of the file containing the reverse side
    public let fileHash: Data


    public init(fileHash: Data) {
        self.fileHash = fileHash
    }
}

/// The selfie contains an error. The error is considered resolved when the file with the selfie changes
public struct InputPassportElementErrorSourceSelfie: Codable, Equatable, Hashable {

    /// Current hash of the file containing the selfie
    public let fileHash: Data


    public init(fileHash: Data) {
        self.fileHash = fileHash
    }
}

/// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes
public struct InputPassportElementErrorSourceTranslationFile: Codable, Equatable, Hashable {

    /// Current hash of the file containing the translation
    public let fileHash: Data


    public init(fileHash: Data) {
        self.fileHash = fileHash
    }
}

/// The translation of the document contains an error. The error is considered resolved when the list of files changes
public struct InputPassportElementErrorSourceTranslationFiles: Codable, Equatable, Hashable {

    /// Current hashes of all files with the translation
    public let fileHashes: [Data]


    public init(fileHashes: [Data]) {
        self.fileHashes = fileHashes
    }
}

/// The file contains an error. The error is considered resolved when the file changes
public struct InputPassportElementErrorSourceFile: Codable, Equatable, Hashable {

    /// Current hash of the file which has the error
    public let fileHash: Data


    public init(fileHash: Data) {
        self.fileHash = fileHash
    }
}

/// The list of attached files contains an error. The error is considered resolved when the file list changes
public struct InputPassportElementErrorSourceFiles: Codable, Equatable, Hashable {

    /// Current hashes of all attached files
    public let fileHashes: [Data]


    public init(fileHashes: [Data]) {
        self.fileHashes = fileHashes
    }
}

