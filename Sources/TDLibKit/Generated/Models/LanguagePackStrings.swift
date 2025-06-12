//
//  LanguagePackStrings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Contains a list of language pack strings
public struct LanguagePackStrings: Codable, Equatable, Hashable {

    /// A list of language pack strings
    public let strings: [LanguagePackString]


    public init(strings: [LanguagePackString]) {
        self.strings = strings
    }
}

