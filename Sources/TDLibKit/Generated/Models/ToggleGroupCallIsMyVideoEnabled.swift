//
//  ToggleGroupCallIsMyVideoEnabled.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-0ada45c3
//  https://github.com/tdlib/td/tree/0ada45c3
//

import Foundation


/// Toggles whether current user's video is enabled
public struct ToggleGroupCallIsMyVideoEnabled: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true if the current user's video is enabled
    public let isMyVideoEnabled: Bool?


    public init(
        groupCallId: Int?,
        isMyVideoEnabled: Bool?
    ) {
        self.groupCallId = groupCallId
        self.isMyVideoEnabled = isMyVideoEnabled
    }
}

