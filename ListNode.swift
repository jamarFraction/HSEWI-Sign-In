import Foundation

class ListNode{
    

    private
    var data: Student
    var next: ListNode?

    
    public
    
    //Constructor with no arguments
    init(){
        
        self.data = Student()
        self.next = nil
        
    }
    
    init(fromListNode data: Student){
        
        self.data = Student()
        self.next = ListNode()
        
    }
    
    
    
    //getter for the next ListNode
    func getNext() -> ListNode{
    
        return self.next!
    
    }
    
}
