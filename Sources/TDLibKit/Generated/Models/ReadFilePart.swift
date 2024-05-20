//
//  ReadFilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file
public struct ReadFilePart: Codable, Equatable, Hashable {

    /// Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
    public let count: Int64?

    /// Identifier of the file. The file must be located in the TDLib file cache
    public let fileId: Int?

    /// The offset from which to read the file
    public let offset: Int64?


    public init(
        count: Int64?,
        fileId: Int?,
        offset: Int64?
    ) {
        self.count = count
        self.fileId = fileId
        self.offset = offset
    }
}

