//
//  ThemeParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains parameters of the application theme
public struct ThemeParameters: Codable, Equatable, Hashable {

    /// An accent color of the text in the RGB24 format
    public let accentTextColor: Int

    /// A color of the background in the RGB24 format
    public let backgroundColor: Int

    /// A color of the buttons in the RGB24 format
    public let buttonColor: Int

    /// A color of text on the buttons in the RGB24 format
    public let buttonTextColor: Int

    /// A color of the text for destructive actions in the RGB24 format
    public let destructiveTextColor: Int

    /// A color of the header background in the RGB24 format
    public let headerBackgroundColor: Int

    /// A color of hints in the RGB24 format
    public let hintColor: Int

    /// A color of links in the RGB24 format
    public let linkColor: Int

    /// A secondary color for the background in the RGB24 format
    public let secondaryBackgroundColor: Int

    /// A color of the section background in the RGB24 format
    public let sectionBackgroundColor: Int

    /// A color of text on the section headers in the RGB24 format
    public let sectionHeaderTextColor: Int

    /// A color of the subtitle text in the RGB24 format
    public let subtitleTextColor: Int

    /// A color of text in the RGB24 format
    public let textColor: Int


    public init(
        accentTextColor: Int,
        backgroundColor: Int,
        buttonColor: Int,
        buttonTextColor: Int,
        destructiveTextColor: Int,
        headerBackgroundColor: Int,
        hintColor: Int,
        linkColor: Int,
        secondaryBackgroundColor: Int,
        sectionBackgroundColor: Int,
        sectionHeaderTextColor: Int,
        subtitleTextColor: Int,
        textColor: Int
    ) {
        self.accentTextColor = accentTextColor
        self.backgroundColor = backgroundColor
        self.buttonColor = buttonColor
        self.buttonTextColor = buttonTextColor
        self.destructiveTextColor = destructiveTextColor
        self.headerBackgroundColor = headerBackgroundColor
        self.hintColor = hintColor
        self.linkColor = linkColor
        self.secondaryBackgroundColor = secondaryBackgroundColor
        self.sectionBackgroundColor = sectionBackgroundColor
        self.sectionHeaderTextColor = sectionHeaderTextColor
        self.subtitleTextColor = subtitleTextColor
        self.textColor = textColor
    }
}

