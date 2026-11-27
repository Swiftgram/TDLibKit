//
//  SpeechRecognitionModels.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Contains models for on-device speech recognition
public struct SpeechRecognitionModels: Codable, Equatable, Hashable {

    /// The file with the model for speech language detection; may be null if none
    public let languageDetectionModel: Document?

    /// The list of models for speech recognition
    public let models: [SpeechRecognitionModel]

    /// The file with the model for voice activity detection; may be null if none
    public let voiceActivityDetectionModel: Document?


    public init(
        languageDetectionModel: Document?,
        models: [SpeechRecognitionModel],
        voiceActivityDetectionModel: Document?
    ) {
        self.languageDetectionModel = languageDetectionModel
        self.models = models
        self.voiceActivityDetectionModel = voiceActivityDetectionModel
    }
}

