//
//  GetChatBoostFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Returns list of features available on the first 10 chat boost levels; this is an offline request
public struct GetChatBoostFeatures: Codable, Equatable, Hashable {

    /// Pass true to get the list of features for channels; pass false to get the list of features for supergroups
    public let isChannel: Bool?


    public init(isChannel: Bool?) {
        self.isChannel = isChannel
    }
}

