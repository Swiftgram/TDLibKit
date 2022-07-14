//
//  ToggleGroupCallScreenSharingIsPaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Pauses or unpauses screen sharing in a joined group call
public struct ToggleGroupCallScreenSharingIsPaused: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?

    /// True if screen sharing is paused
    public let isPaused: Bool?


    public init(
        groupCallId: Int?,
        isPaused: Bool?
    ) {
        self.groupCallId = groupCallId
        self.isPaused = isPaused
    }
}

