//
//  EndGroupCallRecording.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-a7952f38
//  https://github.com/tdlib/td/tree/a7952f38
//

import Foundation


/// Ends recording of an active group call. Requires groupCall.can_be_managed group call flag
public struct EndGroupCallRecording: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

