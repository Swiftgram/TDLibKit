//
//  GetStoryViewers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-ff687167
//  https://github.com/tdlib/td/tree/ff687167
//

import Foundation


/// Returns viewers of a recent outgoing story. The method can be called if story.can_get_viewers == true. The views are returned in a reverse chronological order (i.e., in order of decreasing view_date) For optimal performance, the number of returned stories is chosen by TDLib
public struct GetStoryViewers: Codable, Equatable, Hashable {

    /// The maximum number of story viewers to return//-For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// A viewer from which to return next viewers; pass null to get results from the beginning
    public let offsetViewer: MessageViewer?

    /// Story identifier
    public let storyId: Int?


    public init(
        limit: Int?,
        offsetViewer: MessageViewer?,
        storyId: Int?
    ) {
        self.limit = limit
        self.offsetViewer = offsetViewer
        self.storyId = storyId
    }
}

