//
//  ChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
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

