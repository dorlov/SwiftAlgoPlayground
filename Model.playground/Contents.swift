import UIKit
import AlgoModel
import Algorithms

func partition() {
    var tickets = Ticket.shuffledTickets
        
    print(tickets.map { $0.title })
    
    let pIndex = tickets.partition(by: { $0.createdAt == nil })
    
    print(tickets.map { $0.title })
    print(pIndex)
}

func stablePartion() {
    var tickets = Ticket.shuffledTickets
        
    print(tickets.map { $0.title })
    
    let pIndex = tickets.stablePartition(by: { $0.createdAt == nil })
    
    print(tickets.map { $0.title })
    print(pIndex)
}

partition()
stablePartion()
