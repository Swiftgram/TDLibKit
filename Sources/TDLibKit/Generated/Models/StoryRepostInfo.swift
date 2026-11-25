//
//  StoryRepostInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains information about the original story that was reposted
public struct StoryRepostInfo: Codable, Equatable, Hashable {

    /// True, if the story content was modified during reposting; otherwise, the story wasn't modified
    public let isContentModified: Bool

    /// Origin of the story that was reposted
    public let origin: StoryOrigin


    public init(
        isContentModified: Bool,
        origin: StoryOrigin
    ) {
        self.isContentModified = isContentModified
        self.origin = origin
    }
}

