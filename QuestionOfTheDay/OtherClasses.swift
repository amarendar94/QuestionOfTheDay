//
//  OtherClasses.swift
//  QuestionOfTheDay
//
//  Created by Reddygari,Amarendar Reddy on 10/30/17.
//

import Foundation

class QuestionOfTheDay{
    var question:String?
    var answer0:String?
    var answer1:String?
    var answer2:String?
    
    init(question:String, answer0:String, answer1:String, answer2:String){
        self.question = question
        self.answer0 = answer0
        self.answer1 = answer1
        self.answer2 = answer2
    }
    
//    var objectID:Int?
//    func create(){
//    }
//    func update(){
//    }
    
}

class Openion{
    var question:QuestionOfTheDay
    var answer:Int
    
    init(question:QuestionOfTheDay, answer:Int){
        self.question = question
        self.answer = answer
    }
}

class Statistician{
    var dataStoreQuestionOfTheDay:QuestionOfTheDay?
    var dataStoreOpenion:Openion?
    
    init(dataStoreQuestionOfTheDay:QuestionOfTheDay, dataStoreOpenion:Openion){
        self.dataStoreQuestionOfTheDay = dataStoreQuestionOfTheDay
        self.dataStoreOpenion = dataStoreOpenion
    }
    
    func findPercentage(answer:Int)->Double{
    return 0.0
    }
    func fetchQuestionOfTheDay()->QuestionOfTheDay{
        return dataStoreQuestionOfTheDay!
    }
    func saveOptions(openion:Openion){
        //save openion to backendless
    }
}
