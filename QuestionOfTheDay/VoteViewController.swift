//
//  VoteViewController.swift
//  QuestionOfTheDay
//
//  Created by Reddygari,Amarendar Reddy on 10/30/17.
//

import UIKit

class VoteViewController: UIViewController {

    var stat = Statistician()
    var question:QuestionOfTheDay!
    
    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var option1LBL: UILabel!
    @IBOutlet var option2LBL: UILabel!
    @IBOutlet weak var option3LBL: UILabel!
    
    @IBAction func voteOpinionA(_ sender: Any) {
        stat.saveOpinion(opinion: Opinion(answer:0))
    }
    
    @IBAction func voteOpinionB(_ sender: Any) {
      //  Statistician.saveOpinion(Opinion(answer:1))
        stat.saveOpinion(opinion: Opinion(answer:1))
    }
    
    @IBAction func voteOpinionC(_ sender: Any) {
       // Statistician.saveOpinion(Opinion(answer:1))
        stat.saveOpinion(opinion: Opinion(answer:2))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question = stat.fetchQuestionOfTheDay()
        questionLBL.text = question.question
        option1LBL.text = question.answer0
        option2LBL.text = question.answer1
        option3LBL.text = question.answer2

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
