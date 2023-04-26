//
//  SpeechRecognitionResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4041ecb5
//  https://github.com/tdlib/td/tree/4041ecb5
//

import Foundation


/// Describes result of speech recognition in a voice note
public enum SpeechRecognitionResult: Codable, Equatable {

    /// The speech recognition is ongoing
    case speechRecognitionResultPending(SpeechRecognitionResultPending)

    /// The speech recognition successfully finished
    case speechRecognitionResultText(SpeechRecognitionResultText)

    /// The speech recognition failed
    case speechRecognitionResultError(SpeechRecognitionResultError)


    private enum Kind: String, Codable {
        case speechRecognitionResultPending
        case speechRecognitionResultText
        case speechRecognitionResultError
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .speechRecognitionResultPending:
            let value = try SpeechRecognitionResultPending(from: decoder)
            self = .speechRecognitionResultPending(value)
        case .speechRecognitionResultText:
            let value = try SpeechRecognitionResultText(from: decoder)
            self = .speechRecognitionResultText(value)
        case .speechRecognitionResultError:
            let value = try SpeechRecognitionResultError(from: decoder)
            self = .speechRecognitionResultError(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .speechRecognitionResultPending(let value):
            try container.encode(Kind.speechRecognitionResultPending, forKey: .type)
            try value.encode(to: encoder)
        case .speechRecognitionResultText(let value):
            try container.encode(Kind.speechRecognitionResultText, forKey: .type)
            try value.encode(to: encoder)
        case .speechRecognitionResultError(let value):
            try container.encode(Kind.speechRecognitionResultError, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The speech recognition is ongoing
public struct SpeechRecognitionResultPending: Codable, Equatable {

    /// Partially recognized text
    public let partialText: String


    public init(partialText: String) {
        self.partialText = partialText
    }
}

/// The speech recognition successfully finished
public struct SpeechRecognitionResultText: Codable, Equatable {

    /// Recognized text
    public let text: String


    public init(text: String) {
        self.text = text
    }
}

/// The speech recognition failed
public struct SpeechRecognitionResultError: Codable, Equatable {

    /// Recognition error
    public let error: Error


    public init(error: Error) {
        self.error = error
    }
}

