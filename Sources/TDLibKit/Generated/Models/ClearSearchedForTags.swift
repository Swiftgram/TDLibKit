//
//  ClearSearchedForTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Clears the list of recently searched for hashtags or cashtags
public struct ClearSearchedForTags: Codable, Equatable, Hashable {

    /// Pass true to clear the list of recently searched for cashtags; otherwise, the list of recently searched for hashtags will be cleared
    public let clearCashtags: Bool?


    public init(clearCashtags: Bool?) {
        self.clearCashtags = clearCashtags
    }
}

