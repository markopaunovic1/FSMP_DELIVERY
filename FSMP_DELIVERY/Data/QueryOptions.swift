//
//  QueryOptions.swift
//  FSMP_DELIVERY
//
//  Created by fredrik sundström on 2023-06-04.
//

enum QueryOptions : String {
    case QUERY_DATE = "Tidsintervall"
    case QUERY_ID_EMPLOYEE = "Id-Anställd"
    case QUERY_ID_ORDER = "Id-Order"
    case QUERY_CUSTOMER_NAME = "Namn"
    case QUERY_CUSTOMER_ADRESS = "Adress"
    case QUERY_CUSTOMER_EMAIL = "Email"
    case QUERY_CUSTOMER_PHONENUMBER = "Tel.nr"
    case QUERY_ORDER_TITLE = "Titel"
    case QUERY_ORDER_CREATED = "Mottagen"
    case QUERY_NONE = "Ingen"
}
