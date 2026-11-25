//
//  WidgetQueryAnswer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

