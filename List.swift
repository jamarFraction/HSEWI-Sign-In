import Foundation

class List{
    

    private
    var head: ListNode?
    var tail: ListNode?
    var sessionTitle: String
    var email: String
    
    
    public
    init(){
        
        //default values for the List
        head = nil
        tail = nil
        sessionTitle = ""
        email = ""
        
    }
    
    //getter for the title of the list
    func getTitle() -> String{
        
        return email
        
    }
    
    //setter for the beginning of the list
    func setHead(passedNode: ListNode){
        
        head = passedNode
        
    }
    
    //setter for the title of the session
    func setSessionTitle(passedTitle: String){
        
        sessionTitle = passedTitle
        
    }
    
    //setter for the email address the file will be sent to
    func setEmail(passedEmail: String){
        
        email = passedEmail
        
    }
    
    //checks to see if the list is empty. Returns true if empty
    func isEmpty() -> Bool {
    
        //returns true if the head node is nil, meaning the list is empty
        if(head == nil){
            
            return true
        }
        
        return false
    }
    
}
