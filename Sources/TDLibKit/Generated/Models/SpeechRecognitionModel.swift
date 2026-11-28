//
//  SpeechRecognitionModel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Describes a model for on-device speech recognition
public struct SpeechRecognitionModel: Codable, Equatable, Hashable {

    /// The file with the model
    public let document: Document

    /// IETF language tags of the languages supported by the model
    public let languageCodes: [String]

    /// The minimum version of the speech recognition library that supports the model
    public let version: Int


    public init(
        document: Document,
        languageCodes: [String],
        version: Int
    ) {
        self.document = document
        self.languageCodes = languageCodes
        self.version = version
    }
}

