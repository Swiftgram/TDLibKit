//
//  RemoveInstalledBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-586bc784
//  https://github.com/tdlib/td/tree/586bc784
//

import Foundation


/// Removes background from the list of installed backgrounds
public struct RemoveInstalledBackground: Codable, Equatable, Hashable {

    /// The background identifier
    public let backgroundId: TdInt64?


    public init(backgroundId: TdInt64?) {
        self.backgroundId = backgroundId
    }
}

