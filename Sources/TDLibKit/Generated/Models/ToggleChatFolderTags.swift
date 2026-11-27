//
//  ToggleChatFolderTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Toggles whether chat folder tags are enabled
public struct ToggleChatFolderTags: Codable, Equatable, Hashable {

    /// Pass true to enable folder tags; pass false to disable them
    public let areTagsEnabled: Bool?


    public init(areTagsEnabled: Bool?) {
        self.areTagsEnabled = areTagsEnabled
    }
}

