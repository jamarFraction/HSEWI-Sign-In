import Foundation

class Student{
    
    private
    var name: String
    var phoneNumber: String
    
    public
    //Default constructor for the Student class
    init(name: String = "", phoneNumber: String = ""){
        
        self.name = name
        
        self.phoneNumber = phoneNumber
        
    }
    
    //getter for the Student name
    func getName() -> String{
        
        return name
    }
    
    //getter for the Student number
    func getNumber() -> String{
        
        return phoneNumber
    }
    
    //Setter for the name
    func setName(passedName: String){
        
        self.name = passedName
        
    }
    
    //Setter for the phone number
    func setNumber(passedNumber: String){
        
        self.phoneNumber = passedNumber
    }
    
}

