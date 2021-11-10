//
//  GetFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Returns information about a file; this is an offline request
public struct GetFile: Codable {

    /// Identifier of the file to get
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

