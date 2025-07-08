//
//  ToggleVideoChatEnabledStartNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
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

