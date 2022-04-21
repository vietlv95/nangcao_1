//
//  ViewController.swift
//  nangcao_1
//
//  Created by Viet Le on 21/04/2022.
//

import UIKit

protocol Infomation {
    func showDetail() -> String
}
extension UIViewController {
    func showAlert(title: String) {
        /// do something
    }
}

class ViewController: UIViewController {
    var printt = { (name: String) -> Void in
        
        //todo
        print(name)
    }
    
    var students: [Student]!
    var filterStudents: [Student]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = "A"
        
        filterStudents = students.filter({ student in
            return student.name.contains(text)
        })
        
        var dict = [String: Any]()
        dict["key1"] = 1
        dict["key2"] = "text"
        
        var dict2 = [String: AnyObject]()
        dict2["key1"] = UIView()
        dict2["key2"] = Student()
        
        let result = example()
        let student = Student()
        //print(student.showDetail4())
        
//        let student1 = Student()
//        let student2 = Student(name: "Vinh", age: 21)
//
//        let string = "hello world    ".removeWhiteSpaceCharacter()
//
//        var array = [Infomation]()
//        array.append(student1)
//        array.append(Device(name: "Iphone", model: "13"))
//        self.showAlert(title: "Error Network")
        // Do any additional setup after loading the view.
        self.printt("Viet")
        
    }


}

class API {
    func loadData(completion: ((_ data: [String: Any]) -> String)?) {
        //Do something
        // parse data to Person/object....
        //completion?("text")
    }
}


class Person {
    var name = ""
    var adress: String?

    init(name: String, adress: String? = nil) {
        self.name = name
        self.adress = adress
    }
    
    func info() -> String{
        let adress = adress ?? "khong co dia chi"
        return "name: \(name) \(adress)"
    }

}

func example() -> String {
    var person1 = Person(name: "Viet")
    var person2 = Person(name: "Thai", adress: "BacGiang")
    person2.adress = person1.adress
    person1.adress = "fjdlas"
    
    return person2.info()
}
