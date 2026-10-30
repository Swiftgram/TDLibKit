//
//  SetMainProfileTab.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Changes the main profile tab of the current user
public struct SetMainProfileTab: Codable, Equatable, Hashable {

    /// The new value of the main profile tab
    public let mainProfileTab: ProfileTab?


    public init(mainProfileTab: ProfileTab?) {
        self.mainProfileTab = mainProfileTab
    }
}

