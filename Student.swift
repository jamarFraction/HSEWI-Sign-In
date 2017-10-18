import Foundation

class Student{
    
    private
    var firstName: String
    var lastName: String
    var phoneNumber: String
    
    public
    //Default constructor for the Student class
    init(firstName: String = "", lastName: String = "", phoneNumber: String = ""){
        
        self.firstName = firstName
        
        self.lastName = lastName
        
        self.phoneNumber = phoneNumber
        
    }
    
    //getter for the first name
    func GetFirstName() -> String{
        
        return firstName
    }
    
    //getter for the last name
    func GetLastName() -> String{
        
        return lastName
    }
    
    //getter for the Student number
    func GetPhoneNumber() -> String{
        
        return phoneNumber
    }
    
    //Setter for the first name
    func GetFirstName(passedFirstName: String){
        
        self.firstName = passedFirstName
        
    }
    
    //Setter for the last name
    func GetLastName(passedLastName: String){
        
        self.lastName = passedLastName
        
    }
    
    //Setter for the phone number
    func SetPhoneNumber(passedNumber: String){
        
        self.phoneNumber = passedNumber
    }
    
}

