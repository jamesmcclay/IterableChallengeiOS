//
//  Model.swift
//  IterableChallenge
//
//  Created by James McClay on 4/29/21.
//

import Foundation
import IterableSDK

struct M {
    func updateUserProfile() {
        
        let dataField : [String: Any] = [
            "firstName": K.myName,
            "isRegisteredUser": true,
            "SA_User_Test_Key": "completed"
        ]

        // Most important code
        IterableAPI.updateUser(dataField, mergeNestedObjects: false, onSuccess: profileSuccess, onFailure: profileFailure)
    }
    
    func profileSuccess(data:[AnyHashable:Any]?) -> () {
        // success
        print("profile sent to Iterable success")
        print(data)
    }

    func profileFailure(reason:String?, data:Data?) -> () {
        // failure
        print("profile sent to Iterable failure")
        print(reason)
        print(data)
    }
    
    func sendEvent() {
        let dataFields : [String: Any] = [
            "platform": K.platform,
            "isTestEvent": true,
            "url": K.testUrl + K.myName.lowercased(),
            "secret_code_key": K.secretCode
        ]
        IterableAPI.track(event: "mobileSATestEvent", dataFields: dataFields)
    }
}
