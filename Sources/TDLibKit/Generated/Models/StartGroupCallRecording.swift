//
//  StartGroupCallRecording.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Starts recording of an active group call. Requires groupCall.can_be_managed group call flag
public struct StartGroupCallRecording: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// Group call recording title; 0-64 characters
    public let title: String


    public init(
        groupCallId: Int,
        title: String
    ) {
        self.groupCallId = groupCallId
        self.title = title
    }
}

