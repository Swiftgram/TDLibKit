//
//  CancelPreliminaryUploadFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Stops the preliminary uploading of a file. Supported only for files uploaded by using preliminaryUploadFile
public struct CancelPreliminaryUploadFile: Codable, Equatable, Hashable {

    /// Identifier of the file to stop uploading
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

