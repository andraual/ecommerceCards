<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        


        <script src='main.js'></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        
        
        <title>King of Cards</title>
    </head>
    <body>
        
        
        
        <!-- MEU NAVBAR -->

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="img/crown.png" style="height: 30px"></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="exemplo.jsp">Home <span class="sr-only">(página atual)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">MTG</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Yu-gi-oh</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Pokemon</a>
            </li>

          </ul>
<!--          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
            <button class="btn  my-2 my-sm-0" type="submit">Pesquisar</button>
          </form>-->
        </div>
      </nav>

        
        
        
        <!--MEU FORMULARIO-->
        
        
        <div class="row">
		<div class="col-md-12">
                    <h3 class="text-center" style="padding:50px;">
				Cadastro de Usuário
                                <br>        
                    </h3>
                </div>
        </div>
        
        <div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
                            
                        <div class="form-group">
                            <input type="user" class="form-control" id="inputUser" placeholder="Usuário">
                            <br>
                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                            <br>
                            <input type="pass" class="form-control" id="inputPass" placeholder="Senha">
                            <br>
                            <input type="zip" class="form-control" id="inputZip" placeholder="CEP">
                            <br>
                            <input type="county" class="form-control" id="inputCounty" placeholder="Municipio">
                            <br>
                            <input type="street" class="form-control" id="autocomplete" placeholder="Rua">
                            <br>
                            <input type="city" class="form-control" id="inputCity" placeholder="Cidade">
                            <br>
                            <input type="state" class="form-control" id="inputState" placeholder="Estado">
                            <br>
                            <input type="country" class="form-control" id="inputCountry" placeholder="País">
                            <br>
                        </div>
                        <div class="checkbox">
                            <label>
                                    <input type="checkbox" /> Desejo receber as melhores promoções e noticias por e-mail.
                            </label>
                        </div> 
                        <button type="submit" class="btn btn-primary">
                                Submit
                        </button>
            </div>
            
		<div class="col-md-2">
		</div>
	</div>        
        
        
    </body>
</html>
