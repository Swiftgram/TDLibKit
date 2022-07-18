//
//  StartScheduledGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0147c97f
//  https://github.com/tdlib/td/tree/0147c97f
//

import Foundation


/// Starts a scheduled group call
public struct StartScheduledGroupCall: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

