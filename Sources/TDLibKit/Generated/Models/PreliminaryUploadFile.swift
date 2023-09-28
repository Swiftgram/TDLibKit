//
//  PreliminaryUploadFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-a65f14ff
//  https://github.com/tdlib/td/tree/a65f14ff
//

import Foundation


/// Preliminary uploads a file to the cloud before sending it in a message, which can be useful for uploading of being recorded voice and video notes. Updates updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message
public struct PreliminaryUploadFile: Codable, Equatable, Hashable {

    /// File to upload
    public let file: InputFile?

    /// File type; pass null if unknown
    public let fileType: FileType?

    /// Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be uploaded first
    public let priority: Int?


    public init(
        file: InputFile?,
        fileType: FileType?,
        priority: Int?
    ) {
        self.file = file
        self.fileType = fileType
        self.priority = priority
    }
}

