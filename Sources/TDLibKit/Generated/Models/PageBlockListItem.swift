//
//  PageBlockListItem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-1d3cf2c2
//  https://github.com/tdlib/td/tree/1d3cf2c2
//

import Foundation


/// Describes an item of a list page block
public struct PageBlockListItem: Codable, Equatable {

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

