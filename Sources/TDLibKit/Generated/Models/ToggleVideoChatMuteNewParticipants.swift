//
//  ToggleVideoChatMuteNewParticipants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Toggles whether new participants of a video chat can be unmuted only by administrators of the video chat. Requires groupCall.can_toggle_mute_new_participants right
public struct ToggleVideoChatMuteNewParticipants: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// New value of the mute_new_participants setting
    public let muteNewParticipants: Bool?


    public init(
        groupCallId: Int?,
        muteNewParticipants: Bool?
    ) {
        self.groupCallId = groupCallId
        self.muteNewParticipants = muteNewParticipants
    }
}

