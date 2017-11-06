//
//  Statistics.swift
//  QuestionOfTheDay
//
//  Created by student on 11/5/17.
//

import Foundation


class Statistician{
    
    
    let backendless = Backendless.sharedInstance()!
    var dataStoreQuestionOfTheDay:IDataStore!
    var dataStoreOpinion:IDataStore!
    
    func findPercentage(answer:Int)->Double{
        return 0.0
    }
    
//    func fetchQuestionOfTheDay()->QuestionOfTheDay{
//        return dataStoreQuestionOfTheDay!
//    }
//    
//    func saveOpinion(opinion:Opinion){
//        //save openion to backendless
//    }
    
    init(){
        dataStoreQuestionOfTheDay = backendless.data.of(QuestionOfTheDay.ofClass())
        dataStoreOpinion = backendless.data.of(Opinion.ofClass())
    }
    
}
