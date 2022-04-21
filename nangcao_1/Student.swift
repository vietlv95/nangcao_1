//
//  Student.swift
//  nangcao_1
//
//  Created by Viet Le on 21/04/2022.
//

import Foundation
class Student: Infomation {
    var name: String!
    var age: Int!
    
    init() {
        
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func showDetail() -> String {
        if let name = self.name, let age = self.age {
            //do something...
            return "Name: \(name), Age: \(age)"
        }
        
        // binh thuong
        return "error"
        //return "Name: \(name ?? ""), Age: \(age ?? 20)"
    }
    
    func showDetail2() -> String {
        guard let name = self.name, let age = self.age  else {
            return "error"
        }
        return "Name: \(name), Age: \(age)"
        //return "Name: \(name ?? ""), Age: \(age ?? 20)"
    }
    
    func showDetail3() -> String {
        return "Name: \(name ?? ""), Age: \(age ?? 20)"
    }
    
    func showDetail4() -> String {
        return "Name: \(name!), Age: \(age!)"
    }
}

struct Device: Infomation {
    var name: String
    var model: String
    func showDetail() -> String {
        return "device...."
    }
}

extension String {
    func removeWhiteSpaceCharacter() -> String {
        let newString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return newString
    }
}
