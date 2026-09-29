//
//  StartScheduledVideoChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-42e6a525
//  https://github.com/tdlib/td/tree/42e6a525
//

import Foundation


/// Starts a scheduled video chat
public struct StartScheduledVideoChat: Codable, Equatable, Hashable {

    /// Group call identifier of the video chat
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

