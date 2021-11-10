//
//  SetLogStream.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Sets new log stream for internal logging of TDLib. Can be called synchronously
public struct SetLogStream: Codable {

    /// New log stream
    public let logStream: LogStream?


    public init(logStream: LogStream?) {
        self.logStream = logStream
    }
}

