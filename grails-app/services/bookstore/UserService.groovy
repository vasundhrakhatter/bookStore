package bookstore

import grails.transaction.Transactional


class UserService {
    def springSecurityService
    def changeUsername(Map params){
        Person person=Person.findByUsername(params.current)
        if(person){
            person.username=params.display
            person.save(flush:true,failOnError:true)
            return true
        }
    }
}
