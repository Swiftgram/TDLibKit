//
//  DeleteFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Deletes a file from the TDLib file cache
public struct DeleteFile: Codable {

    /// Identifier of the file to delete
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

