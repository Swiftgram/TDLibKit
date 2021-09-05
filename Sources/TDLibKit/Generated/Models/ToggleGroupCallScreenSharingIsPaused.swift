//
//  ToggleGroupCallScreenSharingIsPaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Pauses or unpauses screen sharing in a joined group call
public struct ToggleGroupCallScreenSharingIsPaused: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// True if screen sharing is paused
    public let isPaused: Bool


    public init(
        groupCallId: Int,
        isPaused: Bool
    ) {
        self.groupCallId = groupCallId
        self.isPaused = isPaused
    }
}

