<div class="container" style="margin-top: 6%">
    <table class="table table-bordered table-striped">
        <thead >
        <tr >
            <th style="text-align: center">FIRST NAME</th>
            <th style="text-align: center">LAST NAME</th>
            <th style="text-align: center">BOOKS</th>
            <th style="text-align: center">OPTIONS</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${listAuthor}" var="authorName">
                <tr>
               <td>${authorName.firstName.toUpperCase()}</td>
                <td>${authorName.lastName.toUpperCase()}</td>
                <td><g:each status="i" in="${authorName.bookTitles}" var="book">
                      ${i+1}.${book.title.toUpperCase()}<br>
                </g:each></td>
                    <td>
                        <g:link controller="admin" action="editAuthor" id="${authorName.id}" params="[author: authorName.id]" class="btn btn-primary" >EDIT</g:link>
                        <g:link id="${authorName.id}" class="btn btn-danger">DELETE</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>
</div>