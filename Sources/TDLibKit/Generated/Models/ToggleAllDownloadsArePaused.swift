//
//  ToggleAllDownloadsArePaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes pause state of all files in the file download list
public struct ToggleAllDownloadsArePaused: Codable, Equatable {

    /// Pass true to pause all downloads; pass false to unpause them
    public let arePaused: Bool?


    public init(arePaused: Bool?) {
        self.arePaused = arePaused
    }
}

