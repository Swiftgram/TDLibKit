//
//  ThemeParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains parameters of the application theme
public struct ThemeParameters: Codable, Equatable {

    /// A color of the background in the RGB24 format
    public let backgroundColor: Int

    /// A color of the buttons in the RGB24 format
    public let buttonColor: Int

    /// A color of text on the buttons in the RGB24 format
    public let buttonTextColor: Int

    /// A color of hints in the RGB24 format
    public let hintColor: Int

    /// A color of links in the RGB24 format
    public let linkColor: Int

    /// A secondary color for the background in the RGB24 format
    public let secondaryBackgroundColor: Int

    /// A color of text in the RGB24 format
    public let textColor: Int


    public init(
        backgroundColor: Int,
        buttonColor: Int,
        buttonTextColor: Int,
        hintColor: Int,
        linkColor: Int,
        secondaryBackgroundColor: Int,
        textColor: Int
    ) {
        self.backgroundColor = backgroundColor
        self.buttonColor = buttonColor
        self.buttonTextColor = buttonTextColor
        self.hintColor = hintColor
        self.linkColor = linkColor
        self.secondaryBackgroundColor = secondaryBackgroundColor
        self.textColor = textColor
    }
}

