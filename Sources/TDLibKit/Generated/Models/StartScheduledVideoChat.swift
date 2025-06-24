//
//  StartScheduledVideoChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
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

