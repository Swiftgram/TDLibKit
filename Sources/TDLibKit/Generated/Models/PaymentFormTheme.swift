//
//  PaymentFormTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-a78245ee
//  https://github.com/tdlib/td/tree/a78245ee
//

import Foundation


/// Theme colors for a payment form
public struct PaymentFormTheme: Codable, Equatable {

    /// A color of the payment form background in the RGB24 format
    public let backgroundColor: Int

    /// A color of the buttons in the RGB24 format
    public let buttonColor: Int

    /// A color of text on the buttons in the RGB24 format
    public let buttonTextColor: Int

    /// A color of hints in the RGB24 format
    public let hintColor: Int

    /// A color of links in the RGB24 format
    public let linkColor: Int

    /// A color of text in the RGB24 format
    public let textColor: Int


    public init(
        backgroundColor: Int,
        buttonColor: Int,
        buttonTextColor: Int,
        hintColor: Int,
        linkColor: Int,
        textColor: Int
    ) {
        self.backgroundColor = backgroundColor
        self.buttonColor = buttonColor
        self.buttonTextColor = buttonTextColor
        self.hintColor = hintColor
        self.linkColor = linkColor
        self.textColor = textColor
    }
}

