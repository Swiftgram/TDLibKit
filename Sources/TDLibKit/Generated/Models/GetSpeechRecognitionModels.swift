//
//  GetSpeechRecognitionModels.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Returns the newest models for on-device speech recognition supported by the given version of the speech recognition library, including models for speech language and voice activity detection. If the request fails or no models are returned, then built-in models or recognizeSpeech must be used instead. The method is supposed to be called after an application update, before the first on-device speech recognition, and from application settings
public struct GetSpeechRecognitionModels: Codable, Equatable, Hashable {

    /// Version of the speech recognition library built into the application; must be positive
    public let version: Int?


    public init(version: Int?) {
        self.version = version
    }
}

