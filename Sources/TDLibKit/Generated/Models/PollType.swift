//
//  PollType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Describes the type of poll
public indirect enum PollType: Codable, Equatable, Hashable {

    /// A regular poll
    case pollTypeRegular

    /// A poll in quiz mode, which has predefined correct answers
    case pollTypeQuiz(PollTypeQuiz)


    private enum Kind: String, Codable {
        case pollTypeRegular
        case pollTypeQuiz
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pollTypeRegular:
            self = .pollTypeRegular
        case .pollTypeQuiz:
            let value = try PollTypeQuiz(from: decoder)
            self = .pollTypeQuiz(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .pollTypeRegular:
            try container.encode(Kind.pollTypeRegular, forKey: .type)
        case .pollTypeQuiz(let value):
            try container.encode(Kind.pollTypeQuiz, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A poll in quiz mode, which has predefined correct answers
public struct PollTypeQuiz: Codable, Equatable, Hashable {

    /// Increasing list of 0-based identifiers of the correct answer options; empty for a yet unanswered poll
    public let correctOptionIds: [Int]

    /// Text that is shown when the user chooses an incorrect answer or taps on the lamp icon; empty for a yet unanswered poll
    public let explanation: FormattedText

    /// Media that is shown when the user chooses an incorrect answer or taps on the lamp icon; may be null if none or the poll is unanswered yet. Currently, can be only of the types messageAnimation, messageAudio, messageDocument, messageLocation, messagePhoto, messageVenue, or messageVideo without caption
    public let explanationMedia: MessageContent?


    public init(
        correctOptionIds: [Int],
        explanation: FormattedText,
        explanationMedia: MessageContent?
    ) {
        self.correctOptionIds = correctOptionIds
        self.explanation = explanation
        self.explanationMedia = explanationMedia
    }
}

