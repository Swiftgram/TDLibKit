//
//  LanguagePackStrings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-5ed1d22d
//  https://github.com/tdlib/td/tree/5ed1d22d
//

import Foundation


/// Contains a list of language pack strings
public struct LanguagePackStrings: Codable, Equatable {

    /// A list of language pack strings
    public let strings: [LanguagePackString]


    public init(strings: [LanguagePackString]) {
        self.strings = strings
    }
}

