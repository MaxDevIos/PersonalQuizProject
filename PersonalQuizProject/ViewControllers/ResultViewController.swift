//
//  ResultViewController.swift
//  PersonalQuizProject
//
//  Created by Maxim Kucherov on 30.08.2021.
//

import UIKit

class ResultViewController: UIViewController {

//MARK: - IB Outlet
    
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var correctAnswersNumberLabel: UILabel!
    @IBOutlet var pictureLabel: UILabel!
    
//MARK: - Public Properties
    var answers: [Answer]!
    
//MARK: - Private Properties
    private let questions = Question.getQuestion()
    private let number = Question.NumberCorrectAnswer.self
    
//MARK: - Initializers
    
//MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        updateResult()
        
    }

//MARK: - IB Actions
    
//MARK: - Public Methods
    
//MARK: - Private Methods

}

//MARK: - Extensions
extension ResultViewController {
    
    private func updateResult() {
        let answers = answers.map { $0.typeAnswer }
        
        var correct = 0
                
        for answer in answers {
            
            switch answer {
            case .correct: correct += 1
            case .wrong: continue
            case .neverMind: continue
                
            }
        }
        
        updateUI(with: correct)
    }
    
    private func updateUI(with answer: Int) {
        correctAnswersNumberLabel.text = "\(answer) of \(questions.count)"
        
        guard let number = number.init(rawValue: answer) else { return }
        pictureLabel.text = number.simbol
        descriptionLabel.text = number.definition
    }
    
}
