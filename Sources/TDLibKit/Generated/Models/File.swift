//
//  File.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
//

import Foundation


/// Represents a file
public struct File: Codable, Equatable {

    /// Approximate file size in bytes in case the exact file size is unknown. Can be used to show download/upload progress
    public let expectedSize: Int

    /// Unique file identifier
    public let id: Int

    /// Information about the local copy of the file
    public let local: LocalFile

    /// Information about the remote copy of the file
    public let remote: RemoteFile

    /// File size, in bytes; 0 if unknown
    public let size: Int


    public init(
        expectedSize: Int,
        id: Int,
        local: LocalFile,
        remote: RemoteFile,
        size: Int
    ) {
        self.expectedSize = expectedSize
        self.id = id
        self.local = local
        self.remote = remote
        self.size = size
    }
}

