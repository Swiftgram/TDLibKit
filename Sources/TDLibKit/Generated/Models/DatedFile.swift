//
//  DatedFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-97ec3eac
//  https://github.com/tdlib/td/tree/97ec3eac
//

import Foundation


/// File with the date it was uploaded
public struct DatedFile: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the file was uploaded
    public let date: Int

    /// The file
    public let file: File


    public init(
        date: Int,
        file: File
    ) {
        self.date = date
        self.file = file
    }
}

