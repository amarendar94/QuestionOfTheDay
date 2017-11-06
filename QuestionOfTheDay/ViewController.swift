 import UIKit
 
 class ViewController: UIViewController {
    
    let APPLICATION_ID = "725BB9F7-FA70-04B2-FFDF-E12DCD979E00"
    let API_KEY = "8CDE0FB5-FC47-CA25-FFF8-15AB3E6D2A00"
    let SERVER_URL = "https://api.backendless.com"
    let backendless = Backendless.sharedInstance()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backendless.hostURL = SERVER_URL
        backendless.initApp(APPLICATION_ID, apiKey: API_KEY)
        
        // Saving test object in the test table
        let testObject = ["foo" : "bar"];
        let dataStore = backendless.data.ofTable("TestTable")
        dataStore?.save(testObject,
                        response: {
                            (result) -> () in
                            print("Object is saved in Backendless. Please check in the console.")
        },
                        error: {
                            (fault : Fault?) -> () in
                            print("Server reported an error: \(String(describing: fault))")
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 }
 

