//
//  ServerModel.swift
//  IOS_Task
//
//  Created by Heema Boss on 2/19/18.
//  Copyright © 2018 Heema Boss. All rights reserved.
//

import Foundation
import ObjectMapper

class Root: Mappable {
    var last = true
    var totalPages = 1
    var totalElements = 1
    var sort = ""
    var numberOfElements = 1
    var first = true
    var size = 1
    var number = 1
    var content1 = [content]()
    var location = 1
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        last   <- map["last"]
        totalPages   <- map["totalPages"]
        totalElements   <- map["totalElements"]
        sort   <- map["sort"]
        numberOfElements   <- map["numberOfElements"]
        first   <- map["first"]
        size   <- map["size"]
        number   <- map["number"]
        content1 <- map["content"]
        location <- map["location"]
    }
}
class content: Mappable {
    var id = 1
    var name = ""
    var ipAddress = ""
    var ipSubnetMask = ""
    var model1 = model()
    var status1 = status()
    var type1 = type()
    var communicationProtocols1 = [communicationProtocols]()
    var targetMachines1 = [targetMachines]()
    
    
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        id   <- map["id"]
        name   <- map["name"]
        ipAddress   <- map["ipAddress"]
        ipSubnetMask   <- map["ipSubnetMask"]
        model1   <- map["model"]
        status1   <- map["status"]
        type1 <- map["type"]
        
    }
}
class model: Mappable {
    var id = 1
    var name = ""
    var creationDate = ""
    var expiryDate = ""
    
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        id   <- map["id"]
        name   <- map["name"]
        creationDate   <- map["creationDate"]
        expiryDate   <- map["expiryDate"]
        
        
    }
}

class status: Mappable {
    var id = 1
    var statusValue = ""

    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        id   <- map["id"]
        statusValue   <- map["statusValue"]

    }
}

class type: Mappable {
    var id = 1
    var name = ""
    var serialNum = ""
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        id   <- map["id"]
        name   <- map["name"]
        serialNum   <- map["serialNum"]
        
    }
}

class communicationProtocols: Mappable {
  
    var communicationProtocolsObject1 = [communicationProtocolsObject]()
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
        
    }
    
    func mapping(map: ObjectMapper.Map) {
   
        communicationProtocolsObject1 <- map["communicationProtocolsObject"]
    }
}

class communicationProtocolsObject: Mappable {
    var id = 1
    var name = ""
    var defaultPort = 1
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        id   <- map["id"]
        name   <- map["name"]
        defaultPort   <- map["defaultPort"]
        
    }
}

class targetMachines: Mappable {
  
    var targetMachinesObject1 = targetMachinesObject()
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
 targetMachinesObject1   <- map["targetMachinesObject"]
    }
}

class targetMachinesObject: Mappable {
    
    var id = 1
    var sourceMachineId = 1
    var circuitStatusId = 1
//    var root1 = Root()
    
    required convenience init?(map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: ObjectMapper.Map) {
        id   <- map["id"]
        sourceMachineId   <- map["sourceMachineId"]
        circuitStatusId   <- map["circuitStatusId"]
//        root1 <- map["Root"]
    }
}












