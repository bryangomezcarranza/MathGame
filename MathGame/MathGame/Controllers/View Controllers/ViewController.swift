//
//  ViewController.swift
//  MathGame
//
//  Created by Bryan Gomez on 8/18/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var numberOne: UILabel!
    @IBOutlet weak var numberTwo: UILabel!
    @IBOutlet weak var rightOrWrongLabel: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    
    //MARK: - Properties
    
    var questions: [Question] = []
    
    var questionNumber = 0
    var scoreTotal = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        let correctAnswer = answer()
        
        score.text = "Score \(getScore())"
        numberOne.text = currentQuestion()
        buttonOne.setTitle(correctAnswer[0], for: .normal)
        buttonTwo.setTitle(correctAnswer[2], for: .normal)
        buttonThree.setTitle(correctAnswer[3], for: .normal)
        
        
        
    }
    //MARK: - Helpers
    
    func getAnswer(userAnswer: String) -> Bool {
        if userAnswer == questions[questionNumber].correctAnswers {
            scoreTotal += 1
            return true
        } else {
        return false
        }
    }
    
    func getScore() -> Int {
        return scoreTotal
    }
    
    func currentQuestion() -> String {
        return questions[questionNumber].text
    }
    
    func answer() -> [String] {
        return questions[questionNumber].answers
    }
    
    func nextQuestion() {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            scoreTotal = 0
        }
    }
    
    
    
    //MARK: - Actions
    @IBAction func answerTapped(_ sender: Any) {
        
    }
    
}

