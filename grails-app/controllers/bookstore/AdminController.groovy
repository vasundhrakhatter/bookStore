package bookstore
import org.springframework.security.access.annotation.Secured
@Secured(['ROLE_ADMIN'])
class AdminController {
    def adminService
    def index() {
        List<BookAuthor> listAuthors=adminService.listAuthors()
        List<BookTitle> listTitles=adminService.listTitles()
        println listAuthors+"*****************"
        println listTitles+"***********************************"
        render (view:'/admin/index', model: [user: params,listAuthor: listAuthors,listTitle: listTitles ])
    }

    def updateAuthor(){
       List<BookAuthor> bookAuthor=BookAuthor.findAllByIdGreaterThanEquals(1)
       render(view: '/admin/index', model: [list:bookAuthor])
    }

    def editAuthor(params){
        BookAuthor bookAuthor=BookAuthor.findById(params.author)
        render(view: "/admin/addAuthor", model: [author: bookAuthor])
    }

    def addBook(){
        println "**************"+params
        def result=adminService.addBook(params);
        if(result){
            render(view: '/admin/index')
        }
    }
}
