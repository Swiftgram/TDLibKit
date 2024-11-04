//
//  DeleteDefaultBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-18618cad
//  https://github.com/tdlib/td/tree/18618cad
//

import Foundation


/// Deletes default background for chats
public struct DeleteDefaultBackground: Codable, Equatable, Hashable {

    /// Pass true if the background is deleted for a dark theme
    public let forDarkTheme: Bool?


    public init(forDarkTheme: Bool?) {
        self.forDarkTheme = forDarkTheme
    }
}

