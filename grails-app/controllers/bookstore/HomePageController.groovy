package bookstore

import org.springframework.security.access.annotation.Secured
@Secured(['permitAll'])
class HomePageController {

    def springSecurityService
    def authenticateService

    def index() {
        render(view: "/HomePage/index")
    }

    def authenticate(){
        def user=authenticateService.authenticateUser(params)
        Role role=Role.findByAuthority('ROLE_ADMIN')
        if(role in user.getAuthorities()){
                redirect(controller: 'admin',action: 'index', params: [user: user.username])
        }
        else{
                redirect(controller: 'user', action: 'index', params: [user: user])
            }
        }
}


