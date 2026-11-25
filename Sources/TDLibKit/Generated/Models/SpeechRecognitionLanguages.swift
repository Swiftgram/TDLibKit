//
//  SpeechRecognitionLanguages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains a list of probable languages of speech
public struct SpeechRecognitionLanguages: Codable, Equatable, Hashable {

    /// IETF language tags of the languages in descending order of their probability; for example, "en-US"
    public let languageCodes: [String]


    public init(languageCodes: [String]) {
        self.languageCodes = languageCodes
    }
}

