//
//  SetLogStream.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
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

