//
//  DeleteFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-404761c5
//  https://github.com/tdlib/td/tree/404761c5
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

