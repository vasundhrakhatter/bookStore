package bookstore
import org.springframework.security.access.annotation.Secured
class PersonController {

    def index() { }

    @Secured(['ROLE_ADMIN'])
    def admin() {
        render 'hello'
    }
    @Secured(['ROLE_USER'])
    def user () {
        render('hello user')
    }
}
