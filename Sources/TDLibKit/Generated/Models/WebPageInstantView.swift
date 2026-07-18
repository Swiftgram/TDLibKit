//
//  WebPageInstantView.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// Describes an instant view page for a web page
public struct WebPageInstantView: Codable, Equatable, Hashable {

    /// Content of the instant view page
    public let blocks: [PageBlock]

    /// An internal link to be opened to leave feedback about the instant view
    public let feedbackLink: InternalLinkType

    /// True, if the instant view contains the full page. A network request might be needed to get the full instant view
    public let isFull: Bool

    /// True, if the instant view must be shown from right to left
    public let isRtl: Bool

    /// Version of the instant view; currently, can be 1 or 2
    public let version: Int

    /// Number of the instant view views; 0 if unknown
    public let viewCount: Int


    public init(
        blocks: [PageBlock],
        feedbackLink: InternalLinkType,
        isFull: Bool,
        isRtl: Bool,
        version: Int,
        viewCount: Int
    ) {
        self.blocks = blocks
        self.feedbackLink = feedbackLink
        self.isFull = isFull
        self.isRtl = isRtl
        self.version = version
        self.viewCount = viewCount
    }
}

