//
//  SetAutosaveSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Sets autosave settings for the given scope. The method is guaranteed to work only after at least one call to getAutosaveSettings
public struct SetAutosaveSettings: Codable, Equatable, Hashable {

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

