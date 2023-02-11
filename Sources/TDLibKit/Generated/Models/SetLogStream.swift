//
//  SetLogStream.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Sets new log stream for internal logging of TDLib. Can be called synchronously
public struct SetLogStream: Codable, Equatable {

    /// New log stream
    public let logStream: LogStream?


    public init(logStream: LogStream?) {
        self.logStream = logStream
    }
}

