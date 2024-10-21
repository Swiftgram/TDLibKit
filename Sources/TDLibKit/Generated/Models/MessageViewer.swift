//
//  MessageViewer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Represents a viewer of a message
public struct MessageViewer: Codable, Equatable, Hashable {

    /// User identifier of the viewer
    public let userId: Int64

    /// Approximate point in time (Unix timestamp) when the message was viewed
    public let viewDate: Int


    public init(
        userId: Int64,
        viewDate: Int
    ) {
        self.userId = userId
        self.viewDate = viewDate
    }
}

