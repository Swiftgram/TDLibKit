//
//  SetSupergroupMainProfileTab.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Changes the main profile tab of the channel; requires can_change_info administrator right
public struct SetSupergroupMainProfileTab: Codable, Equatable, Hashable {

    /// The new value of the main profile tab
    public let mainProfileTab: ProfileTab?

    /// Identifier of the channel
    public let supergroupId: Int64?


    public init(
        mainProfileTab: ProfileTab?,
        supergroupId: Int64?
    ) {
        self.mainProfileTab = mainProfileTab
        self.supergroupId = supergroupId
    }
}

