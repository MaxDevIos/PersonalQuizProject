//
//  QuestionsViewController.swift
//  PersonalQuizProject
//
//  Created by Maxim Kucherov on 31.08.2021.
//

import UIKit

class QuestionsViewController: UIViewController {

//MARK: - IB Outlet
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var mathActionLabel: UILabel!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var rangedStackView: UIStackView!
    
    @IBOutlet var singleButtons: [UIButton]!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var rangedLabels: [UILabel]!
    
    @IBOutlet var rangedSlider: UISlider! {
        didSet {
            let answerCount = Float(currentAnswers.count - 1)
            rangedSlider.maximumValue = answerCount
        }
    }
    
    @IBOutlet var questionProgressView: UIProgressView!
    
//MARK: - Public Properties
    
//MARK: - Private Properties
    
    private let questions = Question.getQuestion()
    private var questionIndex = 0
    private var answersChoosen: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
//MARK: - Initializers
    
//MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        updateUI()
    }
    
//MARK: - IB Actions
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = singleButtons.firstIndex(of: sender) else { return }
        let currentAnswer = currentAnswers[buttonIndex]
        answersChoosen.append(currentAnswer)
        nextQuestion()
    }
    
    @IBAction func multipleAnswerButtonPressed() {
        for (multipleSwitch, answer) in zip(multipleSwitches, currentAnswers) {
            if multipleSwitch.isOn {
                answersChoosen.append(answer)
            }
        }
        nextQuestion()
    }
    
    @IBAction func rangedAnswerButtonPressed() {
        let index = lrintf(rangedSlider.value)
        answersChoosen.append(currentAnswers[index])
        nextQuestion()
    }
    
    @IBAction func rangedSliderActions() {
        
        rangedSlider.value = roundf(rangedSlider.value)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.answers = answersChoosen
    }
    
//MARK: - Public Methods
    
//MARK: - Private Methods
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "showResults", sender: nil)
    }

}

//MARK: - Extensions

extension QuestionsViewController {
    private func updateUI() {
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.text
        mathActionLabel.text = currentQuestion.mathsAction
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        
        title = "Question № \(questionIndex + 1) of \(questions.count)"
        
        showCurrentAnswers(for: currentQuestion.typeForm)
    }
    
    private func showCurrentAnswers(for type: ResponseType) {
        switch type {
        case .single: showSingleStackView(with: currentAnswers)
        case .multiple: showMultipleStackView(with: currentAnswers)
        case .ranged: showRangeStackView(with: currentAnswers)
            
        }
    }
    
    private func showSingleStackView(with answers: [Answer]) {
        singleStackView.isHidden = false
        
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.text, for: .normal)
        }
    }
    
    private func showMultipleStackView(with answers: [Answer]) {
        multipleStackView.isHidden = false
        
        for (label, answer) in zip(multipleLabels, answers) {
            label.text = answer.text
        }
    }
    
    private func showRangeStackView(with answers: [Answer]) {
        rangedSlider.value = Float(currentAnswers.count - 1) / Float(2)
        rangedStackView.isHidden = false
        
        for (label, answer) in zip(rangedLabels, answers) {
            label.text = answer.text
        }
    }
}

