//
//  RemoveBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-00258ccb
//  https://github.com/tdlib/td/tree/00258ccb
//

import Foundation


/// Removes background from the list of installed backgrounds
public struct RemoveBackground: Codable, Equatable, Hashable {

    /// The background identifier
    public let backgroundId: TdInt64?


    public init(backgroundId: TdInt64?) {
        self.backgroundId = backgroundId
    }
}

