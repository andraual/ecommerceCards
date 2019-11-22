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

        
        <script type="text/javascript">
            function buscaEndereco() {
                var cep = document.getElementById("cep").value;
                var xmlhttp = new XMLHttpRequest();
                var url = "http://cep.republicavirtual.com.br/web_cep.php?cep="+  cep + "&formato=json";
                xmlhttp.onreadystatechange = function () {
                    if (xmlhttp.status === 200) {
                        if (xmlhttp.readyState === 4) {
                            var endereco = JSON.parse(xmlhttp.responseText);
                            if (endereco.resultado == "1") {
                                document.getElementById("logradouro").value = endereco.tipo_logradouro +" "+ endereco.logradouro;
                                document.getElementById("bairro").value = endereco.bairro;
                                document.getElementById("cidade").value = endereco.cidade;
                                document.getElementById("estado").value = endereco.uf;
                            } else {
                                alert("Endereco nao encontrado pelo CEP informado");
                            }
                        }
                    }
                };
                xmlhttp.open("GET", url, true);
                xmlhttp.send();

            }
        </script>
        
        <title>King of Cards</title>
    </head>
    
    <body>
        
        <!-- MEU NAVBAR -->

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        
            <div class="col-md-1">
                <a class="navbar-brand" href="./index.html"><img src="./icons/crown.png" style="height: 50px"></a>
            </div>


            <div class="col-md-7">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="./index.html">Home <span class="sr-only">(página atual)</span></a>
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

                    <!--<form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
                        <button class="btn  my-2 my-sm-0" type="submit">Pesquisar</button>
                    </form>-->
                </div>

            </div>
            <div class="col-md-3">
            </div>

            <div class="col-md-1">
                <a href="./cadastro.jsp"><img src="./icons/avatar.png" style="height: 30px; padding-right: 10px" id="cadastro"></a>
                <a href="./carrinho.jsp"><img src="./icons/cart.png" style="height: 30px" id="cadastro"></a>

            </div>
        </nav>

        
        <!--MEU FORMULARIO-->
        
        <div class="conatiner-fluid">
            
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
                                <input type="text" class="form-control" id="user" placeholder="Usuário">
                                <br>
                                <input type="email" class="form-control" id="email" placeholder="Email">
                                <br>
                                <input type="password" class="form-control" id="pass" placeholder="Senha">
                                <br>
                                <input type="text" class="form-control" id="cep" placeholder="CEP"  onblur="buscaEndereco();">
                                <br>
                                <input type="text" readonly="true" class="form-control" id="logradouro" placeholder="Logradouro">
                                <br>
                                <div class="row">
                                    <div class="col">
                                        <input type="number" class="form-control col-sm-12" id="numero" placeholder="Número">
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control col-sm-12" id="complemento" placeholder="Complemento">
                                    </div>
                                </div>
                                <br>
                                <input type="text" readonly="true" class="form-control" id="bairro" placeholder="Bairro">
                                <br>
                                <input type="text" readonly="true" class="form-control" id="cidade" placeholder="Cidade">
                                <br>
                                <input type="text" readonly="true" class="form-control" id="estado" placeholder="Estado">
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
        
        
        
        
        
            
        
        
        </div>
        
    </body>
</html>
