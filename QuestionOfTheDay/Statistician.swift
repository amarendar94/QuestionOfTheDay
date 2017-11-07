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
    
    func findPercentage(answer:Int)->[Double]{
        return [0,1,2]
    }
    
   func fetchQuestionOfTheDay()-> QuestionOfTheDay{
    let queryBuilder = DataQueryBuilder()
    let question = self.dataStoreQuestionOfTheDay?.find(queryBuilder) as! QuestionOfTheDay
    return question
  }
   
    func saveOpinion(opinion:Opinion){
       //save opinion to backendless
    }
    
    init(){
        dataStoreQuestionOfTheDay = backendless.data.of(QuestionOfTheDay.ofClass())
        dataStoreOpinion = backendless.data.of(Opinion.ofClass())
    }
    
}
