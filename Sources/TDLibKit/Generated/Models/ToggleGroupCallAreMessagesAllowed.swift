//
//  ToggleGroupCallAreMessagesAllowed.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Toggles whether participants of a group call can send messages there. Requires groupCall.can_toggle_are_messages_allowed right
public struct ToggleGroupCallAreMessagesAllowed: Codable, Equatable, Hashable {

    /// New value of the are_messages_allowed setting
    public let areMessagesAllowed: Bool?

    /// Group call identifier
    public let groupCallId: Int?


    public init(
        areMessagesAllowed: Bool?,
        groupCallId: Int?
    ) {
        self.areMessagesAllowed = areMessagesAllowed
        self.groupCallId = groupCallId
    }
}

