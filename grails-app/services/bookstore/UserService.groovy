package bookstore

import grails.transaction.Transactional

@Transactional
class UserService {
    def springSecurityService
    def changeUsername(Map params){
        Person person=Person.findByUsername(params.current)
        if(person){
            Person person1=Person.findByUsername(person.username)
            if (!person1) {
                person.username = params.display
                person.save(flush: true, failOnError: true)
                return true
            }
        }
    }
}
