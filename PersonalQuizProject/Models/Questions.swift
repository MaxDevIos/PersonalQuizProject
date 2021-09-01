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
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestion() -> [Question] {
        return [
            Question(
                text: "Calculate the result in your head and choose the correct answer below",
                mathsAction: "-10+-3--4+5",
                type: .single,
                answers: [
                    Answer(text: "2", type: .wrong),
                    Answer(text: "-12", type: .wrong),
                    Answer(text: "-4", type: .correct),
                    Answer(text: "16", type: .wrong),
                    Answer(text: "None of these", type: .wrong)
                ]),
            Question(
                text: "Calculate the result in your head and choose the correct answer below",
                mathsAction: "-96/-6/8",
                type: .single,
                answers: [
                    Answer(text: "2", type: .correct),
                    Answer(text: "12", type: .wrong),
                    Answer(text: "-12", type: .wrong),
                    Answer(text: "-2", type: .wrong),
                    Answer(text: "None of these", type: .wrong)
                ]),
            Question(
                text: "Jo bought a used car for $6000 and paid 15% deposit. How much did he still have to pay?",
                mathsAction: nil,
                type: .ranged,
                answers: [
                    Answer(text: "$900", type: .wrong),
                    Answer(text: "$5000", type: .wrong),
                    Answer(text: "$4500", type: .wrong),
                    Answer(text: "$5100", type: .correct),
                    Answer(text: "None of these", type: .wrong)
                ]),
            Question(
                text: "Calculate the result in your head and choose the correct answer below",
                mathsAction: "5*-2-(8-12)+16/-8",
                type: .single,
                answers: [
                    Answer(text: "6", type: .wrong),
                    Answer(text: "-8", type: .wrong),
                    Answer(text: "-16", type: .wrong),
                    Answer(text: "-6", type: .wrong),
                    Answer(text: "None of these", type: .correct)
                ]),
            Question(
                text: "What is 8% of $600?",
                mathsAction: nil,
                type: .ranged,
                answers: [
                    Answer(text: "$580", type: .wrong),
                    Answer(text: "$480", type: .wrong),
                    Answer(text: "$48", type: .correct),
                    Answer(text: "$58", type: .wrong),
                    Answer(text: "None of these", type: .wrong)
                ]),
            Question(
                text: "Which is the longest distance?",
                mathsAction: nil,
                type: .ranged,
                answers: [
                    Answer(text: "3500cm", type: .wrong),
                    Answer(text: "65.5m", type: .wrong),
                    Answer(text: "75000mm", type: .wrong),
                    Answer(text: "15.5m", type: .wrong),
                    Answer(text: "0.1km", type: .correct)
                ]),
            Question(
                text: "What do you like to do?",
                mathsAction: nil,
                type: .multiple,
                answers: [
                    Answer(text: "Swim", type: .neverMind),
                    Answer(text: "Play football", type: .neverMind),
                    Answer(text: "Dance", type: .neverMind),
                    Answer(text: "Sleep", type: .neverMind),
                    Answer(text: "Sing", type: .neverMind)
                ])
        ]
    }
}
