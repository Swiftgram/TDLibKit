//
//  RemoveBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Removes background from the list of installed backgrounds
public struct RemoveBackground: Codable {

    /// The background identifier
    public let backgroundId: TdInt64?


    public init(backgroundId: TdInt64?) {
        self.backgroundId = backgroundId
    }
}

