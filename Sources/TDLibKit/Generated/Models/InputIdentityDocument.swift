//
//  InputIdentityDocument.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-66234ae2
//  https://github.com/tdlib/td/tree/66234ae2
//

import Foundation


/// An identity document to be saved to Telegram Passport
public struct InputIdentityDocument: Codable, Equatable, Hashable {

    /// Document expiry date; pass null if not applicable
    public let expiryDate: Date?

    /// Front side of the document
    public let frontSide: InputFile

    /// Document number; 1-24 characters
    public let number: String

    /// Reverse side of the document; only for driver license and identity card; pass null otherwise
    public let reverseSide: InputFile?

    /// Selfie with the document; pass null if unavailable
    public let selfie: InputFile?

    /// List of files containing a certified English translation of the document
    public let translation: [InputFile]


    public init(
        expiryDate: Date?,
        frontSide: InputFile,
        number: String,
        reverseSide: InputFile?,
        selfie: InputFile?,
        translation: [InputFile]
    ) {
        self.expiryDate = expiryDate
        self.frontSide = frontSide
        self.number = number
        self.reverseSide = reverseSide
        self.selfie = selfie
        self.translation = translation
    }
}

