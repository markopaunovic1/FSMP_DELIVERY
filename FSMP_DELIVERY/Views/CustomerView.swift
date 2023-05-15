//
//  CustomerView.swift
//  FSMP_DELIVERY
//
//  Created by Philip Andersson on 2023-05-15.
//

import SwiftUI

struct CustomerView: View {
    // temp State var. remove
    @State private var choosenCustomerDetails = "Here is all information about the highlighted customer\n\nName: Janne\nAdress: Lugnagatan 1. 242 33 Hörby\nNumber: 0701234567\nEmail: janne.jansson@gmail.com\n\nDescription: Bra kille!"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Customers")
                TextEditor(text: $choosenCustomerDetails)
                    .disabled(true)
                    .padding()
                HStack{
                    Button {
                        print("Go to add orderView with this customer as a Binding")
                    } label: {
                        Text("Add order")
                    }
                    .buttonStyle(CustomButtonStyle1())
                    Spacer()
                }
                .padding(.leading, 20)
                List{
                    ForEach(1...10, id: \.self) { i in
                        HStack {
                            Text("Customer \(i)")
                        }
                    }
                }
            }
            .navigationBarItems(trailing: Button {
                print("add a customer")
            } label: {
                Image(systemName: "plus.circle")
                    .imageScale(.large)
            })
        }
        
    }
}

struct CustomerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerView()
    }
}
