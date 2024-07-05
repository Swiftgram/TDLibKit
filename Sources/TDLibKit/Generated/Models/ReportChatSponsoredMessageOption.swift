//
//  ReportChatSponsoredMessageOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-3cd93569
//  https://github.com/tdlib/td/tree/3cd93569
//

import Foundation


/// Describes an option to report a sponsored message
public struct ReportChatSponsoredMessageOption: Codable, Equatable, Hashable, Identifiable {

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

