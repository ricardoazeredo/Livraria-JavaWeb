<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="Includes/head.jsp"></jsp:include>
    <body>
        
         <jsp:include page="Includes/navbar.jsp">
             <jsp:param name="title" value="Home" />
         </jsp:include>
        
        <div class="container">
            <div>
                <h1>Java Web - Livraria</h1>
            </div>
             <a type="button" class="btn btn-primary" href="/Livraria/Livro/frmCreateAutor.jsp" >Adicionar Autor</a>
            <a type="button" class="btn btn-primary" href="/Livraria/Livro/frmLivroView.jsp" >Adicionar Livro</a>
            <a type="button" class="btn btn-primary" href="/Livraria/Livro/listarLivro.jsp">Consultar Livros</a>
        </div>
    </body>
</html>
