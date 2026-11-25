//
//  ToggleVideoChatEnabledStartNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Toggles whether the current user will receive a notification when the video chat starts; for scheduled video chats only
public struct ToggleVideoChatEnabledStartNotification: Codable, Equatable, Hashable {

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

