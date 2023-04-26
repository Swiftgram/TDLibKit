//
//  LanguagePackStrings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4041ecb5
//  https://github.com/tdlib/td/tree/4041ecb5
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

