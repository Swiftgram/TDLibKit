//
//  InputStoryAreas.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-00258ccb
//  https://github.com/tdlib/td/tree/00258ccb
//

import Foundation


/// Contains a list of story areas to be added
public struct InputStoryAreas: Codable, Equatable, Hashable {

    /// List of 0-10 input story areas
    public let areas: [InputStoryArea]


    public init(areas: [InputStoryArea]) {
        self.areas = areas
    }
}

