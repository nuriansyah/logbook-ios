//
//  LoginViewModel.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//


import Foundation

class LoginViewModel: ObservableObject {
    var email: String = ""
    var password: String = ""
    @Published var isAuthenticated: Bool = false
    
    
    func login() {
        
        let defaults = UserDefaults.standard
        
        Webservice().login(email: email, password: password) { result in
            switch result {
                case .success(let token):
                    defaults.setValue(token, forKey: "jsonwebtoken")
                    DispatchQueue.main.async {
                        self.isAuthenticated = true
                    }
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func signout() {
           let defaults = UserDefaults.standard
           defaults.removeObject(forKey: "jsonwebtoken")
           DispatchQueue.main.async {
               self.isAuthenticated = false
           }
           
       }
    
}


