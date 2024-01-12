//
//  DeleteFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-4bafdc2b
//  https://github.com/tdlib/td/tree/4bafdc2b
//

import Foundation


/// Deletes a file from the TDLib file cache
public struct DeleteFile: Codable, Equatable, Hashable {

    /// Identifier of the file to delete
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

