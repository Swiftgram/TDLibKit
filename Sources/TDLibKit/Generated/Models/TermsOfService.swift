//
//  TermsOfService.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Contains Telegram terms of service
public struct TermsOfService: Codable, Equatable, Hashable {

    /// The minimum age of a user to be able to accept the terms; 0 if age isn't restricted
    public let minUserAge: Int

    /// True, if a blocking popup with terms of service must be shown to the user
    public let showPopup: Bool

    /// Text of the terms of service
    public let text: FormattedText


    public init(
        minUserAge: Int,
        showPopup: Bool,
        text: FormattedText
    ) {
        self.minUserAge = minUserAge
        self.showPopup = showPopup
        self.text = text
    }
}

