//
//  InputPageBlockListItem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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

    /// Type of item numbering; pass "a" for lowercase letters, "A" for uppercase letters, "i" for lowercase Roman numerals, "I" for uppercase Roman numerals, "1" for decimal numbers, or an empty string for unordered lists
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

