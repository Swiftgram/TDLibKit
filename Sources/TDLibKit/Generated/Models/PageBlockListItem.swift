//
//  PageBlockListItem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-6ee64289
//  https://github.com/tdlib/td/tree/6ee64289
//

import Foundation


/// Describes an item of a list page block
public struct PageBlockListItem: Codable, Equatable, Hashable {

    /// Item label
    public let label: String

    /// Item blocks
    public let pageBlocks: [PageBlock]


    public init(
        label: String,
        pageBlocks: [PageBlock]
    ) {
        self.label = label
        self.pageBlocks = pageBlocks
    }
}

