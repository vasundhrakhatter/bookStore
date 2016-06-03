package bookstore

import grails.transaction.Transactional

@Transactional
class AuthenticateService {
    def springSecurityService

    def authenticateUser(Map params){
        if(springSecurityService.isLoggedIn()){
            def user=springSecurityService.currentUser as Person
            Person user_verified=Person.findByUsernameAndPassword(user.username,user.password)
            if(user_verified){
                return user
            }
        }
        else{
            return null
        }
    }

}
