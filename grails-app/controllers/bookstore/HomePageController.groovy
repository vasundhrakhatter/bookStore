package bookstore

import org.springframework.security.access.annotation.Secured
@Secured(['permitAll'])
class HomePageController {

    def index() {
        render(view: "/HomePage/index")
    }
}
