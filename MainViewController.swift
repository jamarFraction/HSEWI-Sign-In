import UIKit



class MainViewController: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    //Start Session button
    @IBOutlet var startButton: UIButton!
   
    //Session Name text field
    @IBOutlet var sessionName: UITextField!
    
    //Session emailTo text field
    @IBOutlet var sendToEmailField: UITextField!
    
    
    
    //Action runs every time the text field box is edited
    @IBAction func emailFieldEdited(_ sender: UITextField) {
        
        //send to the email validation function that will enable/disable the button "Start Session" button
        validateEmail(passedEmail: sendToEmailField)
        
    }
    
    
    
    //override function for the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //setting a variable titled destination as the segue destination.. it is set equal to the StudentViewController
        guard let destination = segue.destination as? StudentInfoViewController else{return}
        
        //send over the session title and email address
        //Like seriously, why is this so hard to do?
        //We're creating apps here. Am I the only one that thinks we should be able to pass variables between
        //View controllers easier than this?
        destination.sessionTitle = sessionName.text
        destination.emailTo = sendToEmailField.text
            
        }
    
    

    //validate email function. This controls the ability to interact with the button on the page
    func validateEmail(passedEmail : UITextField){
        
        //local representation of the text from the text field
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
