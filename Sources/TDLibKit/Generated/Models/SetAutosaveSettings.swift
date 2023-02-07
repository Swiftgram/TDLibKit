//
//  SetAutosaveSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-3d0140b3
//  https://github.com/tdlib/td/tree/3d0140b3
//

import Foundation


/// Sets autosave settings for the given scope
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

