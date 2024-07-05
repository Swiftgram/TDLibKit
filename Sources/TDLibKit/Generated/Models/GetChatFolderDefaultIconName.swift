//
//  GetChatFolderDefaultIconName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-3cd93569
//  https://github.com/tdlib/td/tree/3cd93569
//

import Foundation


/// Returns default icon name for a folder. Can be called synchronously
public struct GetChatFolderDefaultIconName: Codable, Equatable, Hashable {

    /// Chat folder
    public let folder: ChatFolder?


    public init(folder: ChatFolder?) {
        self.folder = folder
    }
}

