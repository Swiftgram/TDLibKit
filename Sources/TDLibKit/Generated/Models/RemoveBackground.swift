//
//  RemoveBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.18-e79f5409
//  https://github.com/tdlib/td/tree/e79f5409
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

