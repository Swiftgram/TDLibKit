//
//  ScopeAutosaveSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Contains autosave settings for an autosave settings scope
public struct ScopeAutosaveSettings: Codable, Equatable, Hashable {

    /// True, if photo autosave is enabled
    public let autosavePhotos: Bool

    /// True, if video autosave is enabled
    public let autosaveVideos: Bool

    /// The maximum size of a video file to be autosaved, in bytes; 512 KB - 4000 MB
    public let maxVideoFileSize: Int64


    public init(
        autosavePhotos: Bool,
        autosaveVideos: Bool,
        maxVideoFileSize: Int64
    ) {
        self.autosavePhotos = autosavePhotos
        self.autosaveVideos = autosaveVideos
        self.maxVideoFileSize = maxVideoFileSize
    }
}

