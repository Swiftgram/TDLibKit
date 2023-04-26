//
//  SetAutosaveSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4041ecb5
//  https://github.com/tdlib/td/tree/4041ecb5
//

import Foundation


/// Sets autosave settings for the given scope. The method is guaranteed to work only after at least one call to getAutosaveSettings
public struct SetAutosaveSettings: Codable, Equatable {

    /// Autosave settings scope
    public let scope: AutosaveSettingsScope?

    /// New autosave settings for the scope; pass null to set autosave settings to default
    public let settings: ScopeAutosaveSettings?


    public init(
        scope: AutosaveSettingsScope?,
        settings: ScopeAutosaveSettings?
    ) {
        self.scope = scope
        self.settings = settings
    }
}

