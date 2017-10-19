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
    @IBOutlet var areaCodeField: UITextField!
    @IBOutlet var PhoneNumberMiddle: UITextField!
    @IBOutlet var PhoneNumberLast: UITextField!
    @IBOutlet var studentEmailField: UITextField!
    @IBOutlet var submitButton: UIButton!
    
    
    
    @IBAction func firstNameChanged(_ sender: UITextField) {
        
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
    
    @IBAction func lastNameChanged(_ sender: UITextField) {
        
        let lastName: String = lastNameField.text!
        let lastNameLength: Int = lastName.count
        
        //check to see if the length of the text in the field is at least 1 character long
        if lastNameLength >= 1 {
            
            //if so, enable the button
            areaCodeField.isEnabled = true
            
        }else{
            
            //nope, you ain't going nowhere FAM
            areaCodeField.isEnabled = false
            
        }
    }
    
    
    @IBAction func areaCodeChanged(_ sender: UITextField, forEvent event: UIEvent) {
        
        //Put the textField text into a string
        var areaCodeText : String = sender.text!
        
        //create a string "bank" of acceptable data
        let intBank: String = "0123456789"
        
        //Create an integer variable and set it's value equal to the length of the text field
        var areaCodeLength: Int = areaCodeText.count
        
        //If the length of the text in the field will be longer than 3, or
        //if the last character input to the text field is not in our
        //bank
        //Only do this if there is text in the box
        if areaCodeLength >= 1{
            
            if areaCodeLength > 3 || !intBank.contains(areaCodeText.last!){
                
                //set the text variable to the original text, dropping the last character
                areaCodeText = String (areaCodeText.characters.dropLast())
                
                //decrement the length so we don't have issues for enabling/disbling the next field
                areaCodeLength -= 1
                
                //set the textfield text to our varible
                areaCodeField.text = areaCodeText
                
            }
            
        }
        
        
        //test for enabling the next field
        if areaCodeLength >= 1{
            
            //enable
            PhoneNumberMiddle.isEnabled = true
            
        }else{
            
            //disable
            PhoneNumberMiddle.isEnabled = false
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
