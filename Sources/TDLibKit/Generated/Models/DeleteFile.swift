//
//  DeleteFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
//

import Foundation


/// Deletes a file from the TDLib file cache
public struct DeleteFile: Codable, Equatable {

    /// Identifier of the file to delete
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

