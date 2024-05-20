//
//  WebPageInstantView.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes an instant view page for a web page
public struct WebPageInstantView: Codable, Equatable, Hashable {

    /// An internal link to be opened to leave feedback about the instant view
    public let feedbackLink: InternalLinkType

    /// True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
    public let isFull: Bool

    /// True, if the instant view must be shown from right to left
    public let isRtl: Bool

    /// Content of the web page
    public let pageBlocks: [PageBlock]

    /// Version of the instant view; currently, can be 1 or 2
    public let version: Int

    /// Number of the instant view views; 0 if unknown
    public let viewCount: Int


    public init(
        feedbackLink: InternalLinkType,
        isFull: Bool,
        isRtl: Bool,
        pageBlocks: [PageBlock],
        version: Int,
        viewCount: Int
    ) {
        self.feedbackLink = feedbackLink
        self.isFull = isFull
        self.isRtl = isRtl
        self.pageBlocks = pageBlocks
        self.version = version
        self.viewCount = viewCount
    }
}

