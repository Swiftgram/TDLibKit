//
//  VoiceNote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel
public struct VoiceNote: Codable, Equatable {

    /// Duration of the voice note, in seconds; as defined by the sender
    public let duration: Int

    /// True, if speech recognition is completed; Premium users only
    public let isRecognized: Bool

    /// MIME type of the file; as defined by the sender
    public let mimeType: String

    /// Recognized text of the voice note; Premium users only. Call recognizeSpeech to get recognized text of the voice note
    public let recognizedText: String

    /// File containing the voice note
    public let voice: File

    /// A waveform representation of the voice note in 5-bit format
    public let waveform: Data


    public init(
        duration: Int,
        isRecognized: Bool,
        mimeType: String,
        recognizedText: String,
        voice: File,
        waveform: Data
    ) {
        self.duration = duration
        self.isRecognized = isRecognized
        self.mimeType = mimeType
        self.recognizedText = recognizedText
        self.voice = voice
        self.waveform = waveform
    }
}

