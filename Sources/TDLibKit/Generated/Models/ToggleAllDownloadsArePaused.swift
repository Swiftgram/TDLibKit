//
//  ToggleAllDownloadsArePaused.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes pause state of all files in the file download list
public struct ToggleAllDownloadsArePaused: Codable, Equatable, Hashable {

    /// Pass true to pause all downloads; pass false to unpause them
    public let arePaused: Bool?


    public init(arePaused: Bool?) {
        self.arePaused = arePaused
    }
}

