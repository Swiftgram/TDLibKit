//
//  GetLocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-21d5184e
//  https://github.com/tdlib/td/tree/21d5184e
//

import Foundation


/// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
public struct GetLocalizationTargetInfo: Codable, Equatable, Hashable {

    /// Pass true to get only locally available information without sending network requests
    public let onlyLocal: Bool?


    public init(onlyLocal: Bool?) {
        self.onlyLocal = onlyLocal
    }
}

