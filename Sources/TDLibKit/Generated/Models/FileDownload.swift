//
//  FileDownload.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a file added to file download list
public struct FileDownload: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the file was added to the download list
    public let addDate: Int

    /// Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
    public let completeDate: Int

    /// File identifier
    public let fileId: Int

    /// True, if downloading of the file is paused
    public let isPaused: Bool

    /// The message with the file
    public let message: Message


    public init(
        addDate: Int,
        completeDate: Int,
        fileId: Int,
        isPaused: Bool,
        message: Message
    ) {
        self.addDate = addDate
        self.completeDate = completeDate
        self.fileId = fileId
        self.isPaused = isPaused
        self.message = message
    }
}

