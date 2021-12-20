//
//  ReadFilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-4eaae330
//  https://github.com/tdlib/td/tree/4eaae330
//

import Foundation


/// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file
public struct ReadFilePart: Codable, Equatable {

    /// Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
    public let count: Int?

    /// Identifier of the file. The file must be located in the TDLib file cache
    public let fileId: Int?

    /// The offset from which to read the file
    public let offset: Int?


    public init(
        count: Int?,
        fileId: Int?,
        offset: Int?
    ) {
        self.count = count
        self.fileId = fileId
        self.offset = offset
    }
}

