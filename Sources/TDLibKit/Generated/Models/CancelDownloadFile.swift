//
//  CancelDownloadFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Stops the downloading of a file. If a file has already been downloaded, does nothing
public struct CancelDownloadFile: Codable, Equatable, Hashable {

    /// Identifier of a file to stop downloading
    public let fileId: Int?

    /// Pass true to stop downloading only if it hasn't been started, i.e., the request hasn't been sent to the server
    public let onlyIfPending: Bool?


    public init(
        fileId: Int?,
        onlyIfPending: Bool?
    ) {
        self.fileId = fileId
        self.onlyIfPending = onlyIfPending
    }
}

