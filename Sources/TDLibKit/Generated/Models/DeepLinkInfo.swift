//
//  DeepLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Contains information about a tg: deep link
public struct DeepLinkInfo: Codable, Equatable {

    /// True, if the user must be asked to update the application
    public let needUpdateApplication: Bool

    /// Text to be shown to the user
    public let text: FormattedText


    public init(
        needUpdateApplication: Bool,
        text: FormattedText
    ) {
        self.needUpdateApplication = needUpdateApplication
        self.text = text
    }
}

