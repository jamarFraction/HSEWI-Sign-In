import UIKit

class StudentInfoViewController: UIViewController {

    //Declaring the Session List
    var sessionList: List = List()
    
    //session title and emailTo variables for the Session List
    //These two are getting passed from the MainViewController segue
    var sessionTitle: String!
    var emailTo: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //The view has loaded so set the value of the session title and the email-to address
        sessionList.setSessionTitle(passedTitle: sessionTitle)
        sessionList.setEmail(passedEmail: emailTo)
    
    }
    
    
    
    //Variables connected to text fields and buttons on the ViewController
    @IBOutlet var firstNameField: UITextField!
    @IBOutlet var lastNameField: UITextField!
    @IBOutlet var phoneNumberField: UITextField!
    @IBOutlet var studentEmailField: UITextField!
    @IBOutlet var submitButton: UIButton!
    
    
    
    @IBAction func nameChanged(_ sender: UITextField) {
        
        //I know, I know, this is super explicitly coded but I can't cast the UITextField text to a string and still be able to use count :(
    
        let firstName: String = firstNameField.text!
        let firstNameLength: Int = firstName.count
        
        //check to see if the length of the text in the field is at least 1 character long
        if firstNameLength >= 1 {
            
            //if so, enable the button
            lastNameField.isEnabled = true
            
        }else{
            
            //nope, you ain't going nowhere FAM
            lastNameField.isEnabled = false
            
        }
        
    }
    
    
    
    @IBAction func emailChanged(_ sender: UITextField) {
        
        //send the email to the email validation function
        validateEmail(passedEmail: studentEmailField)
        
    }
    
    
    
    //validate email function. This controls the ability to interact with the button on the page
    func validateEmail(passedEmail : UITextField){
        
        let emailText = passedEmail.text
        
        //check to see if the email text contains the @ symbol
        if(emailText?.contains("@") == true){
            
            //enable the button to start the session
            submitButton.isEnabled = true
            
        }else{
            
            //continue to keep the start button disabled
            submitButton.isEnabled = false
            
        }
    
    }
   
}
