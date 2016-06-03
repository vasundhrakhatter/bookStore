package bookstore
import org.springframework.security.access.annotation.Secured
@Secured(['ROLE_ADMIN'])
class AdminController {
    def createEntryService
    def index() {
        println "*******"+params
        render (view:'/admin/index', model: [user: params])
    }

    def createEntry(){

    }
}
