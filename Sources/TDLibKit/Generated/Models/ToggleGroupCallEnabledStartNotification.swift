//
//  ToggleGroupCallEnabledStartNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-d44617b4
//  https://github.com/tdlib/td/tree/d44617b4
//

import Foundation


/// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only
public struct ToggleGroupCallEnabledStartNotification: Codable, Equatable, Hashable {

    /// New value of the enabled_start_notification setting
    public let enabledStartNotification: Bool?

    /// Group call identifier
    public let groupCallId: Int?


    public init(
        enabledStartNotification: Bool?,
        groupCallId: Int?
    ) {
        self.enabledStartNotification = enabledStartNotification
        self.groupCallId = groupCallId
    }
}

