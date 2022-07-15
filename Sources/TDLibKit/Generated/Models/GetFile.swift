//
//  GetFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Returns information about a file; this is an offline request
public struct GetFile: Codable, Equatable {

    /// Identifier of the file to get
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

