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
        Boolean result=adminService.createEntry(params)
        def success=g.message(code: 'entry.successfully.added')
        if(result){
            render(view: '/admin/index', model:[msg: success])
        }
    }
}
