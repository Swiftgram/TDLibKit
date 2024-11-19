//
//  ReportOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Describes an option to report an entity to Telegram
public struct ReportOption: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the option
    public let id: Data

    /// Text of the option
    public let text: String


    public init(
        id: Data,
        text: String
    ) {
        self.id = id
        self.text = text
    }
}

