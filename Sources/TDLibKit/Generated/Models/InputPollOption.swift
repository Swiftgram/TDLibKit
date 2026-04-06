//
//  InputPollOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Describes one answer option of a poll to be created
public struct InputPollOption: Codable, Equatable, Hashable {

    /// Option text; 1-100 characters. Only custom emoji entities are allowed to be added and only by Premium users
    public let text: FormattedText


    public init(text: FormattedText) {
        self.text = text
    }
}

