//
//  ToggleDownloadIsPaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Changes pause state of a file in the file download list
public struct ToggleDownloadIsPaused: Codable, Equatable, Hashable {

    /// Identifier of the downloaded file
    public let fileId: Int?

    /// Pass true if the download is paused
    public let isPaused: Bool?


    public init(
        fileId: Int?,
        isPaused: Bool?
    ) {
        self.fileId = fileId
        self.isPaused = isPaused
    }
}

