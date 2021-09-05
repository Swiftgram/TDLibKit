//
//  SetAutoDownloadSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Sets auto-download settings
public struct SetAutoDownloadSettings: Codable {

    /// New user auto-download settings
    public let settings: AutoDownloadSettings

    /// Type of the network for which the new settings are relevant
    public let type: NetworkType


    public init(
        settings: AutoDownloadSettings,
        type: NetworkType
    ) {
        self.settings = settings
        self.type = type
    }
}

