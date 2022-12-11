//
//  ToggleGroupCallScreenSharingIsPaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-8ee04b37
//  https://github.com/tdlib/td/tree/8ee04b37
//

import Foundation


/// Pauses or unpauses screen sharing in a joined group call
public struct ToggleGroupCallScreenSharingIsPaused: Codable, Equatable {

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

