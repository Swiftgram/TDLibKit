//
//  CancelPreliminaryUploadFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-18618cad
//  https://github.com/tdlib/td/tree/18618cad
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

