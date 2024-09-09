//
//  ToggleDownloadIsPaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-87d88107
//  https://github.com/tdlib/td/tree/87d88107
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

