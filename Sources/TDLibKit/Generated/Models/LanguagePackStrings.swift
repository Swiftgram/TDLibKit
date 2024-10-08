//
//  LanguagePackStrings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
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

