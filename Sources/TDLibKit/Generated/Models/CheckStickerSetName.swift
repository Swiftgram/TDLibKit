//
//  CheckStickerSetName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Checks whether a name can be used for a new sticker set
public struct CheckStickerSetName: Codable, Equatable {

    /// Name to be checked
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

