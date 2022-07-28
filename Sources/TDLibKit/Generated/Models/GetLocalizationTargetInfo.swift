//
//  GetLocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
public struct GetLocalizationTargetInfo: Codable, Equatable {

    /// Pass true to get only locally available information without sending network requests
    public let onlyLocal: Bool?


    public init(onlyLocal: Bool?) {
        self.onlyLocal = onlyLocal
    }
}

