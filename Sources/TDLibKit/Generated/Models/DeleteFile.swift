//
//  DeleteFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
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

