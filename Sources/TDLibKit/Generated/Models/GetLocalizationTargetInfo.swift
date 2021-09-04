//
//  GetLocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
public struct GetLocalizationTargetInfo: Codable {

    /// If true, returns only locally available information without sending network requests
    public let onlyLocal: Bool


    public init(onlyLocal: Bool) {
        self.onlyLocal = onlyLocal
    }
}
