//
//  EndGroupCallScreenSharing.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-12c1689b
//  https://github.com/tdlib/td/tree/12c1689b
//

import Foundation


/// Ends screen sharing in a joined group call
public struct EndGroupCallScreenSharing: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

