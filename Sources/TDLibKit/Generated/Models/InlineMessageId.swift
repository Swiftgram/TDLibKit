//
//  InlineMessageId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-fe61d641
//  https://github.com/tdlib/td/tree/fe61d641
//

import Foundation


/// Contains identifier of a sent guest message
public struct InlineMessageId: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier for the message
    public let id: String


    public init(id: String) {
        self.id = id
    }
}

