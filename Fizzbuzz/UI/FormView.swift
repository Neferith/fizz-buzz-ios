//
//  FormView.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import SwiftUI

struct FormView: View {
    
    @ObservedObject var viewModel: FormViewModel
    
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }

       var body: some View {
           Form {
               Section {
                   TextField("Username", text: $username)
                   TextField("Email", text: $email)
               }

               Section {
                   Button("Create account") {
                       print("Creating account…")
                   }
               }.disabled(disableForm)

           }
       }
}



struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(viewModel: FormViewModel())
    }
}
