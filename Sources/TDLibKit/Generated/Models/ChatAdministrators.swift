//
//  ChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Represents a list of chat administrators
public struct ChatAdministrators: Codable {

    /// A list of chat administrators
    public let administrators: [ChatAdministrator]


    public init(administrators: [ChatAdministrator]) {
        self.administrators = administrators
    }
}

