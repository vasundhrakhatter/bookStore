package bookstore
import org.springframework.security.access.annotation.Secured
@Secured(['ROLE_USER'])
class UserController {
    def userService
    def index() {
        render (view:'/user/index', model: [user: params])
    }

    def settings(){
        def result=userService.changeUsername(params)
        if(result){
            render "Success"
        }
    }
}
