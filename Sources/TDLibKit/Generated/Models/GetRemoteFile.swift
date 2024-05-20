//
//  GetRemoteFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns information about a file by its remote identifier; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message. Even the request succeeds, the file can be used only if it is still accessible to the user. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
public struct GetRemoteFile: Codable, Equatable, Hashable {

    /// File type; pass null if unknown
    public let fileType: FileType?

    /// Remote identifier of the file to get
    public let remoteFileId: String?


    public init(
        fileType: FileType?,
        remoteFileId: String?
    ) {
        self.fileType = fileType
        self.remoteFileId = remoteFileId
    }
}

