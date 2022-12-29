<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./CSS/StylessTicket.css">    
    <title> Codo a Codo - Conf Bs As - Compra de tickets </title>
</head>
<body>
<!-- -->
<header>
    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="./Images/codoacodo.jpg">
                Conf Bs As
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">La conferencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#oradores">Los oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#lugar">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#form-orador">Convi�rtete en orador</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-compra-tickets active" aria-current="page" href="#">Comprar tickets</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<!-- -->
<main>
    <section class="container pt-section">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">

                <div class="row row-cols-1 row-cols-md-3 text-center">
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-primary">
                            <div class="card-header py-3 text-white bg-primary border-primary">
                                <h4 class="my-0 fw-normal"><b><u><i> Estudiante </i></u></b></h4>
                            </div>
                            <div class="card-body">
                                <p><u> Tienen un descuento: </u></p>
                                <h3 class="card-title pricing-card-title"><b> 80% </b></h3>
                                <small class="fw-light text-muted mt-3"> * Presentar documentaci�n </small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-info">
                            <div class="card-header py-3 text-white bg-info border-info">
                                <h4 class="my-0 fw-normal"><b><u><i> Trainee </i></u></b></h4>
                            </div>
                            <div class="card-body">
                                <p><u> Tienen un descuento: </u></p>
                                <h3 class="card-title pricing-card-title"><b> 50% </b></h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentaci�n</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-warning">
                            <div class="card-header py-3 text-white bg-warning border-warning">
                                <h4 class="my-0 fw-normal"><b><u><i> Junior </i></u></b></h4>
                            </div>
                            <div class="card-body">
                                <p><u> Tienen un descuento: </u></p>
                                <h3 class="card-title pricing-card-title"><b> 15% </b></h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentaci�n</small>
                            </div>
                        </div>
                    </div>
                </div>

                <h2 class="titulo-gral"><u><i> Venta </i><span>Valor de ticket $200 </u></span></h2>
                
                <form action="update.jsp">
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Ingrese un Nombre" aria-label="Nombre" value="<%= request.getParameter("nombre") %> " id="nombre" required>
                        </div>
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Ingrese un Apellido" aria-label="Apellido" value="<%= request.getParameter("apellido") %> " id="apellido" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="email" class="form-control" placeholder="Ingrese un E-Mail" aria-label="Email" value="<%= request.getParameter("mail") %> " id="mail" required>
                        </div>
                    </div>
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <label for="cantidadTickets" class="form-label"><u><i> Cantidad </i></u></label>
							<!-- 
                            <input type="number" class="form-control" placeholder="Cantidad de Tickets" aria-label="Cantidad" name="cantidad" value="<%= Integer.parseInt(request.getParameter("cantidad")) %> " id="cantidadTickets" min="1" required>
 							-->
							<input id="cantidadTickets" min ="1" type="number" name="cantidad" value="<%= Integer.parseInt( request.getParameter("cantidad")) %>" class="form-control" placeholder="Cantidad de Ticket" aria-label="Cantidad" required>

                        </div>
                        <div class="col-md mb-3">
                            <label for="categoriaSelect" class="form-label"><u><i> Categor�a </i></u></label>
                            <select class="form-select" aria-label="Categor�a" id="categoriaSelect">
                                <option value="" selected> <%= request.getParameter("categoria") %> </option>
                                <option value="0">Sin Categoria</option>
                                <option value="1">Estudiante</option>
                                <option value="2">Trainee</option>
                                <option value="3">Junior</option>
                            </select>
                        </div>
                    </div>
                    <div class="alert alert-primary mt-2 mb-4" role="alert"><i>
                        Total a pagar: $ </i><span id="totalPago" class="align-middle"></span>
                    </div>
                    <div class="row gx-2">                        
                        
                        <div class="col-md mb-3">
							<!--                           
                            <button type="button" onclick="location.href='compradetickets.html'" class="w-100 btn btn-lg btn-form" id="botonBorrar"><b> Confirmar Compra</b></button>
                             -->
                            <button type="button" onclick="location.href='index.html'" class="w-100 btn btn-lg btn-form" id="botonConfirmar"><b> Confirmar Compra</b></button>
                        </div>
                        
                        <div class="col-md mb-3">
                            <button type="button" onclick="location.href='delete.jsp'" class="w-100 btn btn-lg btn-form" id="botonBorrar"><b> Cancelar</b></button>
                        </div>
                        
                        <div class="col-md mb-3">
                            <button type="submit" class="w-100 btn btn-lg btn-form" id="botonUpdate"><b> Modificar</b></button>
                        </div>
                        
                    </div>
                </form>
            </div>
        </div>
    </section>
</main>
<!-- -->
<footer id="main-footer">
    <div class="container">
        <ul class="nav d-flex justify-content-between py-5">
            <li class="navbar-item"><a href="#" class="nav-link text-light">Preguntas <span>Frecuentes</span></a></li>
            <li class="navbar-item"><a href="#" class="nav-link text-light">Cont�ctanos</a></li>
            <li class="navbar-item"><a href="#" class="nav-link text-light">Prensa</a></li>
            <li class="navbar-item"><a href="#" class="nav-link text-light">Conferencias</a></li>
            <li class="navbar-item"><a href="#" class="nav-link text-light">T�rminos y <span>condiciones</span></a></li>
            <li class="navbar-item"><a href="#" class="nav-link text-light">Privacidad</a></li>
            <li class="navbar-item"><a href="#" class="nav-link text-light">Estudiantes</a></li>
        </ul>
    </div>
</footer>
<!-- -->
<script src="./JavaScript/funcionesjs.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"></script>
<!-- -->
</body>
</html>