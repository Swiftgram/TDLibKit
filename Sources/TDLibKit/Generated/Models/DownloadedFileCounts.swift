//
//  DownloadedFileCounts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Contains number of being downloaded and recently downloaded files found
public struct DownloadedFileCounts: Codable, Equatable, Hashable {

    /// Number of active file downloads found, including paused
    public let activeCount: Int

    /// Number of completed file downloads found
    public let completedCount: Int

    /// Number of paused file downloads found
    public let pausedCount: Int


    public init(
        activeCount: Int,
        completedCount: Int,
        pausedCount: Int
    ) {
        self.activeCount = activeCount
        self.completedCount = completedCount
        self.pausedCount = pausedCount
    }
}

