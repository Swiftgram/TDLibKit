//
//  SetGroupCallTitle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Sets group call title. Requires groupCall.can_be_managed group call flag
public struct SetGroupCallTitle: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// New group call title; 1-64 characters
    public let title: String


    public init(
        groupCallId: Int,
        title: String
    ) {
        self.groupCallId = groupCallId
        self.title = title
    }
}
