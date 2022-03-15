//
//  ChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-a78245ee
//  https://github.com/tdlib/td/tree/a78245ee
//

import Foundation


/// Represents a list of chat administrators
public struct ChatAdministrators: Codable, Equatable {

    /// A list of chat administrators
    public let administrators: [ChatAdministrator]


    public init(administrators: [ChatAdministrator]) {
        self.administrators = administrators
    }
}

