//
//  ChangeStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Installs/uninstalls or activates/archives a sticker set
public struct ChangeStickerSet: Codable, Equatable, Hashable {

    /// The new value of is_archived. A sticker set can't be installed and archived simultaneously
    public let isArchived: Bool?

    /// The new value of is_installed
    public let isInstalled: Bool?

    /// Identifier of the sticker set
    public let setId: TdInt64?


    public init(
        isArchived: Bool?,
        isInstalled: Bool?,
        setId: TdInt64?
    ) {
        self.isArchived = isArchived
        self.isInstalled = isInstalled
        self.setId = setId
    }
}

