//
//  Outline.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
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

