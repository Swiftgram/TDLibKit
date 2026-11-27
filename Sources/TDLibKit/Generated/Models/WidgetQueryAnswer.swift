//
//  WidgetQueryAnswer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Contains an answer to a widget query
public struct WidgetQueryAnswer: Codable, Equatable, Hashable {

    /// Data returned by the bot
    public let data: String


    public init(data: String) {
        self.data = data
    }
}

