//
//  Outline.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
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

