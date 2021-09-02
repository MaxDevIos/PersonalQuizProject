//
//  Questions.swift
//  PersonalQuizProject
//
//  Created by Maxim Kucherov on 31.08.2021.
//


enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let mathsAction: String?
    let typeForm: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestion() -> [Question] {
        return [
            Question(
                text: "Calculate the result in your head and choose the correct answer below",
                mathsAction: "-10+-3--4+5",
                typeForm: .single,
                answers: [
                    Answer(text: "2", typeAnswer: .wrong),
                    Answer(text: "-12", typeAnswer: .wrong),
                    Answer(text: "-4", typeAnswer: .correct),
                    Answer(text: "16", typeAnswer: .wrong),
                    Answer(text: "None of these", typeAnswer: .wrong)
                ]),
            Question(
                text: "Calculate the result in your head and choose the correct answer below",
                mathsAction: "-96/-6/8",
                typeForm: .single,
                answers: [
                    Answer(text: "2", typeAnswer: .correct),
                    Answer(text: "12", typeAnswer: .wrong),
                    Answer(text: "-12", typeAnswer: .wrong),
                    Answer(text: "-2", typeAnswer: .wrong),
                    Answer(text: "None of these", typeAnswer: .wrong)
                ]),
            Question(
                text: "Jo bought a used car for $6000 and paid 15% deposit. How much did he still have to pay?",
                mathsAction: nil,
                typeForm: .ranged,
                answers: [
                    Answer(text: "$900", typeAnswer: .wrong),
                    Answer(text: "$5000", typeAnswer: .wrong),
                    Answer(text: "$4500", typeAnswer: .wrong),
                    Answer(text: "$5100", typeAnswer: .correct),
                    Answer(text: "None of these", typeAnswer: .correct)
                ]),
            Question(
                text: "Calculate the result in your head and choose the correct answer below",
                mathsAction: "5*-2-(8-12)+16/-8",
                typeForm: .single,
                answers: [
                    Answer(text: "6", typeAnswer: .wrong),
                    Answer(text: "-8", typeAnswer: .wrong),
                    Answer(text: "-16", typeAnswer: .wrong),
                    Answer(text: "-6", typeAnswer: .wrong),
                    Answer(text: "None of these", typeAnswer: .correct)
                ]),
            Question(
                text: "What is 8% of $600?",
                mathsAction: nil,
                typeForm: .ranged,
                answers: [
                    Answer(text: "$580", typeAnswer: .wrong),
                    Answer(text: "$480", typeAnswer: .wrong),
                    Answer(text: "$48", typeAnswer: .correct),
                    Answer(text: "$58", typeAnswer: .wrong),
                    Answer(text: "None of these", typeAnswer: .wrong)
                ]),
            Question(
                text: "Which is the longest distance?",
                mathsAction: nil,
                typeForm: .ranged,
                answers: [
                    Answer(text: "3500cm", typeAnswer: .wrong),
                    Answer(text: "65.5m", typeAnswer: .wrong),
                    Answer(text: "0.1km", typeAnswer: .correct),
                    Answer(text: "15.5m", typeAnswer: .wrong),
                    Answer(text: "15.5m", typeAnswer: .wrong)
                ]),
            Question(
                text: "What do smart people usually do?",
                mathsAction: nil,
                typeForm: .multiple,
                answers: [
                    Answer(text: "Swim", typeAnswer: .neverMind),
                    Answer(text: "Play football", typeAnswer: .neverMind),
                    Answer(text: "Read books", typeAnswer: .correct),
                    Answer(text: "Sleep", typeAnswer: .neverMind),
                    Answer(text: "Sing", typeAnswer: .neverMind)
                ])
        ]
    }
}
