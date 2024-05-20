//
//  IdentityDocument.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// An identity document
public struct IdentityDocument: Codable, Equatable, Hashable {

    /// Document expiration date; may be null if not applicable
    public let expirationDate: Date?

    /// Front side of the document
    public let frontSide: DatedFile

    /// Document number; 1-24 characters
    public let number: String

    /// Reverse side of the document; only for driver license and identity card; may be null
    public let reverseSide: DatedFile?

    /// Selfie with the document; may be null
    public let selfie: DatedFile?

    /// List of files containing a certified English translation of the document
    public let translation: [DatedFile]


    public init(
        expirationDate: Date?,
        frontSide: DatedFile,
        number: String,
        reverseSide: DatedFile?,
        selfie: DatedFile?,
        translation: [DatedFile]
    ) {
        self.expirationDate = expirationDate
        self.frontSide = frontSide
        self.number = number
        self.reverseSide = reverseSide
        self.selfie = selfie
        self.translation = translation
    }
}

