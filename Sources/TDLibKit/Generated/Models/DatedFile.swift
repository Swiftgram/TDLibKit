//
//  DatedFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-3ff97237
//  https://github.com/tdlib/td/tree/3ff97237
//

import Foundation


/// File with the date it was uploaded
public struct DatedFile: Codable, Equatable {

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

