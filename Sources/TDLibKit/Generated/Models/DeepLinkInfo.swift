//
//  DeepLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains information about a tg: deep link
public struct DeepLinkInfo: Codable, Equatable, Hashable {

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

