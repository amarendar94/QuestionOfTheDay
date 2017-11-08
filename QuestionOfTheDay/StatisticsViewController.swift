//
//  StatisticsViewController.swift
//  QuestionOfTheDay
//
//  Created by Reddygari,Amarendar Reddy on 10/30/17.
//

import UIKit

class StatisticsViewController: UIViewController {

    var stat = Statistician()
    var question:QuestionOfTheDay!
    
    @IBOutlet weak var sQuestionLBL: UILabel!
    @IBOutlet weak var sOption1: UILabel!
    @IBOutlet weak var sOption2: UILabel!
    @IBOutlet weak var sOption3: UILabel!
    @IBOutlet weak var option1percentage: UILabel!
    @IBOutlet weak var option2percentage: UILabel!
    @IBOutlet weak var option3percentage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question = stat.fetchQuestionOfTheDay()
        sQuestionLBL.text = question.question
        sOption1.text = question.answer0
        sOption2.text = question.answer1
        sOption3.text = question.answer2
        option1percentage.text = "\(stat.findPercentage()[0])"
        option1percentage.text = "\(stat.findPercentage()[1])"
        option1percentage.text = "\(stat.findPercentage()[2])"
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
