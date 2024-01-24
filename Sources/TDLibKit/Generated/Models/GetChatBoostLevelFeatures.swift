//
//  GetChatBoostLevelFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-5bbfc1cf
//  https://github.com/tdlib/td/tree/5bbfc1cf
//

import Foundation


/// Returns list of features available on the specific chat boost level; this is an offline request
public struct GetChatBoostLevelFeatures: Codable, Equatable, Hashable {

    /// Chat boost level
    public let level: Int?


    public init(level: Int?) {
        self.level = level
    }
}

