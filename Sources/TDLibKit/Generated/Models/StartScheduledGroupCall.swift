//
//  StartScheduledGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-6dae0a56
//  https://github.com/tdlib/td/tree/6dae0a56
//

import Foundation


/// Starts a scheduled group call
public struct StartScheduledGroupCall: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

