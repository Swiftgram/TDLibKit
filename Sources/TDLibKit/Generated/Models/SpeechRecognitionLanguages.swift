//
//  SpeechRecognitionLanguages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
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

