//
//  Statistics.swift
//  QuestionOfTheDay
//
//  Created by student on 11/5/17.
//

import Foundation

class Statistician{
    let APPLICATION_ID = "725BB9F7-FA70-04B2-FFDF-E12DCD979E00"
    let API_KEY = "8CDE0FB5-FC47-CA25-FFF8-15AB3E6D2A00"
    let SERVER_URL = "https://api.backendless.com"
    let backendless = Backendless.sharedInstance()!
    
    //let backendless = Backendless.sharedInstance()!
    var dataStoreQuestionOfTheDay:IDataStore!
    var dataStoreOpinion:IDataStore!
    
    func findPercentage()->[Double]{
        
        let opinions = dataStoreOpinion?.find() as! [Opinion]
        var ans0:Int = 0
        var ans1:Int = 0
        var ans2:Int = 0
        for opinion in opinions {
            if opinion.answer == 0 {
                ans0+=1
            }
            if opinion.answer == 1 {
                ans1+=1
            }
            if opinion.answer == 2 {
                ans2+=1
            }
        }
        
        return [Double((ans0*100)/(ans0+ans1+ans2)),Double((ans1*100)/(ans0+ans1+ans2)),Double((ans2*100)/(ans0+ans1+ans2))]
    }
    
   func fetchQuestionOfTheDay()-> QuestionOfTheDay{
    let queryBuilder = DataQueryBuilder()
    let question = self.dataStoreQuestionOfTheDay?.find(queryBuilder) as! [QuestionOfTheDay]
    return question[0]
  }
   
    func saveOpinion(opinion:Opinion){
       //let opinion = Opinion(question: QuestionOfTheDay, answer: Int)
        dataStoreOpinion.save(opinion)
    }
    
    init(){
        backendless.hostURL = SERVER_URL
        backendless.initApp(APPLICATION_ID, apiKey: API_KEY)
        
        dataStoreQuestionOfTheDay = backendless.data.of(QuestionOfTheDay.ofClass())
        dataStoreOpinion = backendless.data.of(Opinion.ofClass())
    }
    
}
