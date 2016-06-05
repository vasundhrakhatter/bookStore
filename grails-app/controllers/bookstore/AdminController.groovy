package bookstore
import org.springframework.security.access.annotation.Secured
@Secured(['ROLE_ADMIN'])
class AdminController {
    def adminService
    def index() {
        println "*******"+params
        render (view:'/admin/index', model: [user: params])
    }

    def createEntry(){
        def result=adminService.createEntry(params)
        if(result){
            render('Success')
        }
    }
}
