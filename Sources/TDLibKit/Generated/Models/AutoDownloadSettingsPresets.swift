//
//  AutoDownloadSettingsPresets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Contains auto-download settings presets for the current user
public struct AutoDownloadSettingsPresets: Codable, Equatable, Hashable {

    /// Preset with highest settings; expected to be used by default when connected on Wi-Fi
    public let high: AutoDownloadSettings

    /// Preset with lowest settings; expected to be used by default when roaming
    public let low: AutoDownloadSettings

    /// Preset with medium settings; expected to be used by default when using mobile data
    public let medium: AutoDownloadSettings


    public init(
        high: AutoDownloadSettings,
        low: AutoDownloadSettings,
        medium: AutoDownloadSettings
    ) {
        self.high = high
        self.low = low
        self.medium = medium
    }
}

