//
//  PageBlockListItem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
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

