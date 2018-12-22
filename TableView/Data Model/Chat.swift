//
//  Chat.swift
//  TableView
//
//  Created by Krasa on 15/12/2018.
//  Copyright © 2018 Ronte. All rights reserved.
//

import Foundation

struct Chat {
    let id: Int
    let user: User
    let messages: [UserMessage]
    
    var prettyDescription: String {
        return user.name + "  " + (messages.last?.text ?? "")
    }
}

extension Chat: ChatTableViewCellViewModel {
    var userName: String {
        return user.name
    }
    
    var lastMessageTitle: String {
        return messages.last?.text ?? ""
    }
    
    // TODO: - привести дату в удобочитаемый вид
    
    var lastMessageDatePrettyPrinted: String {
        return messages.last?.date.description ?? ""
    }
}
