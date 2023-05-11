//
//  Order.swift
//  FSMP_DELIVERY
//
//  Created by Philip Andersson on 2023-05-11.
//

import Foundation

struct order {
    
    var customer : Customer
    // var verificationQrCode : QRCode or Image ?
    // var orderDestination : latLng or smthin
    
    var orderName : String
    var assignedUser : String = ""
    
    var isActivated : Bool = false
    var isCompleted : Bool = false
    
    var initDate : Date
    var dateOfCompletion : Date = Date()
    
}
