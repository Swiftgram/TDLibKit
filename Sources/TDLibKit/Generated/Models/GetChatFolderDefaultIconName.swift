//
//  GetChatFolderDefaultIconName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-04525f6f
//  https://github.com/tdlib/td/tree/04525f6f
//

import Foundation


/// Returns default icon name for a folder. Can be called synchronously
public struct GetChatFolderDefaultIconName: Codable, Equatable {

    /// Chat folder
    public let folder: ChatFolder?


    public init(folder: ChatFolder?) {
        self.folder = folder
    }
}

