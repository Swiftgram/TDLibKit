//
//  ToggleChatFolderTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

