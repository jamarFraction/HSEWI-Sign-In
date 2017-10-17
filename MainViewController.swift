import UIKit




class MainViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //Start Session button
    @IBOutlet weak var startButton: UIButton!
   
    //Session Name text field
    @IBOutlet weak var sessionName: UITextField!
    
    //Session emailTo text field
    @IBOutlet var sendToEmailField: UITextField!
    
    
    @IBAction func emailFieldEdited(_ sender: UITextField) {
        
        //send to the email validation function that will enable/disable the button "Start Session" button
        validateEmail(passedEmail: sendToEmailField)
        
    }
    
    
    @IBAction func startSession(_ sender: AnyObject) {
        
        //Create the list that will be sent to the StudentInformationViewController
        let newList: List = List()
        
        //set the session title in the list
        newList.setSessionTitle(passedTitle: sessionName.text!)
        
        //set the email in the list
        newList.setEmail(passedEmail: sendToEmailField.text!)
        
        //Segue to the the next ViewController, but pass the List with it
        performSegue(withIdentifier: "toStudentInfo", sender: newList)
    
    }
    
    //override function for the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        //segue to run referencing the toStudentInfo identifier segue
        if(segue.identifier == "toStudentInfo"){
            
            //setting a variable titled destination as the segue destination.. it is set equal to the StudentViewController
            let destination = segue.destination as? StudentInfoViewController
            
            //send over the list.. it is set to the variable sessionList over in our StudentInfoViewController
            destination?.sessionList = sender as? List!
            
        }
    }
    

    //validate email function. This controls the ability to interact with the button on the page
    func validateEmail(passedEmail : UITextField){
        
        let emailText = passedEmail.text
        
        //check to see if the email text contains the @ symbol
        if(emailText?.contains("@") == true){
            
            //enable the button to start the session
            startButton.isEnabled = true
            
        }else{
            
            //continue to keep the start button disabled
            startButton.isEnabled = false
            
        }
        
        
    }
}
    
    
   




//        let blah = Student()
//
//        blah.setName(passedName: "Jamar")
//        blah.setNumber(passedNumber: "402-419-8957")
//
//
//        print(blah.getName())
//        print(blah.getNumber())


// emailAlert.addAction(okAction)


// emailAlert.addAction(UIAlertAction(title: "Accept", style: UIAlertActionStyle.Default,handler: nil))


//        //alerts
//        let emailAlert = UIAlertController()
//        emailAlert.title = "Email format"
//        emailAlert.message = "Please correct your email (should be of the format xxx@xxx.xxx"
//
//
//        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
//
//        emailAlert.addAction(okAction)
//
