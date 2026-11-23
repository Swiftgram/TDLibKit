//
//  StoryRepostInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
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

