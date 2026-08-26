//
//  InputPageBlockListItem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Describes an item of a list page block to be sent
public struct InputPageBlockListItem: Codable, Equatable, Hashable {

    /// Item blocks
    public let blocks: [InputPageBlock]

    /// True, if the item has a checkbox
    public let hasCheckbox: Bool

    /// True, if the item is checked
    public let isChecked: Bool

    /// Type of the item numbering type; must be one of "a" for a lowercase letter, "A" for an uppercase letter, "i" for lowercase Roman numerals, "I" for uppercase Roman numerals, "1" for decimal numbers, or empty for unordered lists
    public let type: String

    /// Value of the item; pass 0 for unordered lists
    public let value: Int


    public init(
        blocks: [InputPageBlock],
        hasCheckbox: Bool,
        isChecked: Bool,
        type: String,
        value: Int
    ) {
        self.blocks = blocks
        self.hasCheckbox = hasCheckbox
        self.isChecked = isChecked
        self.type = type
        self.value = value
    }
}

