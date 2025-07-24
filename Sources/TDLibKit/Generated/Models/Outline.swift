//
//  Outline.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Represents outline of an image
public struct Outline: Codable, Equatable, Hashable {

    /// The list of closed vector paths
    public let paths: [ClosedVectorPath]


    public init(paths: [ClosedVectorPath]) {
        self.paths = paths
    }
}

