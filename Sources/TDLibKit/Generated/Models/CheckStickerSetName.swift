//
//  CheckStickerSetName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-db5d5da0
//  https://github.com/tdlib/td/tree/db5d5da0
//

import Foundation


/// Checks whether a name can be used for a new sticker set
public struct CheckStickerSetName: Codable, Equatable, Hashable {

    /// Name to be checked
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

