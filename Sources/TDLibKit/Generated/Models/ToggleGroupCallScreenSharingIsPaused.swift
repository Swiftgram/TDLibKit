//
//  ToggleGroupCallScreenSharingIsPaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Pauses or unpauses screen sharing in a joined group call
public struct ToggleGroupCallScreenSharingIsPaused: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true to pause screen sharing; pass false to unpause it
    public let isPaused: Bool?


    public init(
        groupCallId: Int?,
        isPaused: Bool?
    ) {
        self.groupCallId = groupCallId
        self.isPaused = isPaused
    }
}

