//
//  PageBlockListItem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes an item of a list page block
public struct PageBlockListItem: Codable, Equatable, Hashable {

    /// Item blocks
    public let blocks: [PageBlock]

    /// True, if the item has a checkbox
    public let hasCheckbox: Bool

    /// True, if the item is checked
    public let isChecked: Bool

    /// Item label
    public let label: String

    /// Type of the item numbering type; must be one of "a" for lowercase letters, "A" for uppercase letters, "i" for lowercase Roman numerals, "I" for uppercase Roman numerals, "1" for decimal numbers, or empty for unordered lists
    public let type: String

    /// Value of the item; 0 for unordered lists
    public let value: Int


    public init(
        blocks: [PageBlock],
        hasCheckbox: Bool,
        isChecked: Bool,
        label: String,
        type: String,
        value: Int
    ) {
        self.blocks = blocks
        self.hasCheckbox = hasCheckbox
        self.isChecked = isChecked
        self.label = label
        self.type = type
        self.value = value
    }
}

