//
//  ToggleGroupCallEnabledStartNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only
public struct ToggleGroupCallEnabledStartNotification: Codable {

    /// New value of the enabled_start_notification setting
    public let enabledStartNotification: Bool

    /// Group call identifier
    public let groupCallId: Int


    public init(
        enabledStartNotification: Bool,
        groupCallId: Int
    ) {
        self.enabledStartNotification = enabledStartNotification
        self.groupCallId = groupCallId
    }
}

