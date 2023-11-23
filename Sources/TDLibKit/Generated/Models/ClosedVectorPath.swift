//
//  ClosedVectorPath.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Represents a closed vector path. The path begins at the end point of the last command
public struct ClosedVectorPath: Codable, Equatable, Hashable {

    /// List of vector path commands
    public let commands: [VectorPathCommand]


    public init(commands: [VectorPathCommand]) {
        self.commands = commands
    }
}

