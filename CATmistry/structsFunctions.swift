//
//  structsFunctions.swift
//  CATmistry
//
//  Created by Wang Zerui on 27/11/20.
//

import Foundation

struct Topic {
    var title: String
    var pic: String
    var pointsNeeded: Int
    var subTopics: Array<SubTopic>
    var errorLabel: String
}

struct PlayTopic {
    var title: String
    var pic: String
    var pointsNeeded: Int
    var segDesti: String
    var errorLabel: String
}

struct SubTopic {
    var title: String
    var pic: String
    var needSlider: Bool
    var content: SubContent
    var subTopics: Array<SubSubTopic>?
}

struct SubSubTopic {
    var topic: String
    var picture: String
    var id: Int
    var content: SubSubContent
}

struct SubContent {
    var definition: String
}

struct SubSubContent {
    var image: String
}

struct GameTopic {
    var title: String
    var pic: String
    var pointsNeeded: Int
}

struct QuizTopic {
    var questions: [QuizQuestion]
}

struct QuizQuestion {
    var question: String
    var options: [String]
    var correctAnswer: Int
}
var learnTopics = [
    Topic(title: "Gas Tests", pic: "gas-tests.png", pointsNeeded: 0, subTopics: [
        SubTopic(title: "What are Gas Tests?", pic: "gas-tests.png", needSlider: false, content:
                    SubContent(definition: ""),
                 subTopics: nil),
        SubTopic(title: "Take the Quiz", pic: "quiz.png", needSlider: false, content: SubContent(definition: ""), subTopics: [])
    ], errorLabel: ""),
    
    Topic(title: "Separation Methods", pic: "separation-methods.png", pointsNeeded: 10, subTopics: [
        SubTopic(title: "What is Separation?", pic: "separation-methods.png", needSlider: false, content: SubContent(definition: "A separation process is a method that converts a mixture or solution of chemical substances into two or more distinct product mixtures. \n\nSeparations exploit differences in chemical properties or physical properties (such as size, shape, mass, density, or chemical affinity) between the constituents of a mixture."), subTopics: []),
        SubTopic(title: "Take the Quiz", pic: "quiz.png", needSlider: false, content: SubContent(definition: ""), subTopics: [])
    ], errorLabel: "Please complete Chapter 1"),
    
    Topic(title: "pH and Indicators", pic: "pH-and-indicators.png", pointsNeeded: 20, subTopics: [
        SubTopic(title: "What is pH?", pic: "pH-and-indicators.png", needSlider: false, content: SubContent(definition: "pH (the Power of Hydrogen) is a scale of 1 to 14 used to specify the acidity or basicity of a solution. The pH scale indicates the concentration of hydrogen ions in a solution.\n\nA lower pH (1 - 6.9) indicates that the solution is acidic, while a higher pH (7.1 - 14) indicates that the solution is alkaline. A pH of 7 indicates that the solution is neutral (neither acidic nor alkaline)."), subTopics: []),
        SubTopic(title: "What are Indicators?", pic: "pH-and-indicators.png", needSlider: false, content: SubContent(definition: "Indicators are chemicals which turn into different colours depending on the pH of the solution. The transition range is the range in which the indicator changes from one colour to the other."), subTopics: []),
        SubTopic(title: "Take the Quiz", pic: "quiz.png", needSlider: false, content: SubContent(definition: ""), subTopics: [])
    ], errorLabel: "Please complete Chapter 2"),
    
    Topic(title: "Periodic Table", pic: "periodic-table.png", pointsNeeded: 30, subTopics: [
        SubTopic(title: "What is the Periodic Table?", pic: "periodic-table.png", needSlider: false, content: SubContent(definition: "A periodic table is a chart that shows chemical elements in order of their atomic number. \n\nElements with similar properties are arranged in the same column (group), and elements with the same number of electron shells are arranged in the same row (period)."), subTopics: []),
        SubTopic(title: "What are Elements?", pic: "periodic-table.png", needSlider: false, content: SubContent(definition: ""), subTopics: []),
        SubTopic(title: "First 18 Elements", pic: "periodic-table.png", needSlider: false, content: SubContent(definition: ""), subTopics: []),
        SubTopic(title: "Take the Quiz", pic: "quiz.png", needSlider: false, content: SubContent(definition: ""), subTopics: [])
    ], errorLabel: "Please complete Chapter 3"),
]

var gameTopics = [
    PlayTopic(title: "Diffusion", pic: "gas-tests.png", pointsNeeded: 10, segDesti: "diff", errorLabel: "Please complete Chapter 1"),
    PlayTopic(title: "Retreive the solids", pic: "separation-methods.png", pointsNeeded: 20, segDesti: "sepe", errorLabel: "Please complete Chapter 2"),
    PlayTopic(title: "Get the PH Right", pic: "pH-and-indicators.png", pointsNeeded: 30, segDesti: "phAndIndi", errorLabel: "Please complete Chapter 3"),
    PlayTopic(title: "Identify the elements", pic: "periodic-table.png", pointsNeeded: 40, segDesti: "periodic", errorLabel: "Please complete Chapter 4")
]
