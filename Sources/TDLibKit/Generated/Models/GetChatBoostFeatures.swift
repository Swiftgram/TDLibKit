//
//  GetChatBoostFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns the list of features available for different chat boost levels. This is an offline method
public struct GetChatBoostFeatures: Codable, Equatable, Hashable {

    /// Pass true to get the list of features for channels; pass false to get the list of features for supergroups
    public let isChannel: Bool?


    public init(isChannel: Bool?) {
        self.isChannel = isChannel
    }
}

