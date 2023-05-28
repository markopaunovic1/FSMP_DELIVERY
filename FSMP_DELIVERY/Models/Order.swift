//
//  Order.swift
//  FSMP_DELIVERY
//
//  Created by Philip Andersson on 2023-05-11.
//
import SwiftUI
import Foundation
import FirebaseFirestoreSwift


struct Order : Codable,Identifiable {
    @DocumentID var id: String?
    var ordername : String
    var details : String
    var customer : Customer
    var orderId:String
    var assignedUser : String?
    var isActivated : Bool = false
    var isCompleted : Bool = false
    var initDate : Date
    var dateOfCompletion : Date?
    
    func getSignedVersion() ->Order{
        return Order(id:id,
                     ordername: ordername,
                     details: details,
                     customer: customer,
                     orderId: orderId,
                     assignedUser: assignedUser,
                     isActivated: false,
                     isCompleted: true,
                     initDate: initDate,
                     dateOfCompletion: Date())
    }
    
}
