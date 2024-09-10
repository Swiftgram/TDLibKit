//
//  SetGroupCallTitle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-dcfd86c7
//  https://github.com/tdlib/td/tree/dcfd86c7
//

import Foundation


/// Sets group call title. Requires groupCall.can_be_managed group call flag
public struct SetGroupCallTitle: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// New group call title; 1-64 characters
    public let title: String?


    public init(
        groupCallId: Int?,
        title: String?
    ) {
        self.groupCallId = groupCallId
        self.title = title
    }
}

