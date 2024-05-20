//
//  EncryptedPassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about an encrypted Telegram Passport element; for bots only
public struct EncryptedPassportElement: Codable, Equatable, Hashable {

    /// Encrypted JSON-encoded data about the user
    public let data: Data

    /// List of attached files
    public let files: [DatedFile]

    /// The front side of an identity document
    public let frontSide: DatedFile

    /// Hash of the entire element
    public let hash: String

    /// The reverse side of an identity document; may be null
    public let reverseSide: DatedFile?

    /// Selfie with the document; may be null
    public let selfie: DatedFile?

    /// List of files containing a certified English translation of the document
    public let translation: [DatedFile]

    /// Type of Telegram Passport element
    public let type: PassportElementType

    /// Unencrypted data, phone number or email address
    public let value: String


    public init(
        data: Data,
        files: [DatedFile],
        frontSide: DatedFile,
        hash: String,
        reverseSide: DatedFile?,
        selfie: DatedFile?,
        translation: [DatedFile],
        type: PassportElementType,
        value: String
    ) {
        self.data = data
        self.files = files
        self.frontSide = frontSide
        self.hash = hash
        self.reverseSide = reverseSide
        self.selfie = selfie
        self.translation = translation
        self.type = type
        self.value = value
    }
}

