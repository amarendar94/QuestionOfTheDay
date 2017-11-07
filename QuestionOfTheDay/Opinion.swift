//
//  Openion.swift
//  QuestionOfTheDay
//
//  Created by student on 11/5/17.
//

import Foundation

@objcMembers
class Opinion : NSObject {
    var question:QuestionOfTheDay
    var answer:Int
    var objectId:String?
    
    init(question:QuestionOfTheDay, answer:Int){
        self.question = question
        self.answer = answer
    }

}

