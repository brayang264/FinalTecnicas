<%-- 
    Document   : index
    Created on : 22/11/2023, 11:05:22 p. m.
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resumen liga colombiana</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container px-5">
                <a class="navbar-brand" href="#page-top">12 EN LA CANCHA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#!">Recibir Resumen</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Dejar de Recibir</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="masthead text-center text-white">
            <div class="masthead-content">
                <div class="container px-5">
                    <h1 class="masthead-heading mb-0">12 En la cancha</h1>
                    <h2 class="masthead-subheading mb-0">Resumen del fútbol Colombiano</h2>
                    <a class="btn btn-primary btn-xl rounded-pill mt-5" href="#scroll">Ver ahora</a>
                </div>
            </div>
            <div class="bg-circle-1 bg-circle"></div>
            <div class="bg-circle-2 bg-circle"></div>
            <div class="bg-circle-3 bg-circle"></div>
            <div class="bg-circle-4 bg-circle"></div>
        </header>
        <!-- Content section 1-->
        <section id="scroll">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-lg-1">
                        <div class="col-lg-6 order-lg-2">
                            <div class="p-5"><img class="img-fluid rounded-circle" src="assets/img/trofeo.png" alt="..." /></div>
                        </div>
                        <div class="p-5">
                            <h2 class="display-4">Tabla de posiciones 2023</h2>
                            <p>Ya se ha finalzado la última jornada y así quedó la tabla de posiciones</p>
                            <table class="stats-table" id="posiciones" data-limit-active="no" data-limit="0">
                                <thead>
                                    <tr>
                                        <th class="pos">Pos</th>
                                        <th class="escudo"></th>
                                        <th class="equipo">Equipo</th>
                                        <th class="puntos">Pts</th>
                                        <th class="puntos">Pj</th>
                                        <th>Pg</th>
                                        <th>Pe</th>
                                        <th>Pp</th>
                                        <th>Gf</th>
                                        <th>Gc</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="">
                                        <td class="pos">1</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/922.png" alt="Águilas Doradas Rionegro"></td>
                                        <td class="equipo">             
                                            Águilas Doradas 
                                        </td>
                                        <td class="puntos">44</td>
                                        <td class="puntos">20</td>
                                        <td>12</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>35</td>
                                        <td>12</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">2</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/67.png" alt="Independiente Medellín"></td>
                                        <td class="equipo">             
                                            Indep. Medellín 
                                        </td>
                                        <td class="puntos">39</td>
                                        <td class="puntos">20</td>
                                        <td>10</td>
                                        <td>9</td>
                                        <td>1</td>
                                        <td>30</td>
                                        <td>15</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">3</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/66.png" alt="América de Cali"></td>
                                        <td class="equipo">
                                            América de Cali 
                                        </td>
                                        <td class="puntos">37</td>
                                        <td class="puntos">20</td>
                                        <td>10</td>
                                        <td>7</td>
                                        <td>3</td>
                                        <td>35</td>
                                        <td>19</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">4</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/179.png" alt="Tolima"></td>
                                        <td class="equipo">
                                            Tolima 
                                        </td>
                                        <td class="puntos">37</td>
                                        <td class="puntos">20</td>
                                        <td>11</td>
                                        <td>4</td>
                                        <td>5</td>
                                        <td>23</td>
                                        <td>17</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">5</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/105.png" alt="At. Nacional"></td>
                                        <td class="equipo">
                                            At. Nacional 
                                        </td>
                                        <td class="puntos">33</td>
                                        <td class="puntos">20</td>
                                        <td>10</td>
                                        <td>3</td>
                                        <td>7</td>
                                        <td>33</td>
                                        <td>21</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">6</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/81.png" alt="Junior"></td>
                                        <td class="equipo">
                                            Junior 
                                        </td>
                                        <td class="puntos">30</td>
                                        <td class="puntos">20</td>
                                        <td>8</td>
                                        <td>6</td>
                                        <td>6</td>
                                        <td>29</td>
                                        <td>17</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">7</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/184.png" alt="Millonarios"></td>
                                        <td class="equipo">
                                            Millonarios 
                                        </td>
                                        <td class="puntos">30</td>
                                        <td class="puntos">20</td>
                                        <td>8</td>
                                        <td>6</td>
                                        <td>6</td>
                                        <td>21</td>
                                        <td>20</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">8</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/111.png" alt="Deportivo Cali"></td>
                                        <td class="equipo">
                                            Deportivo Cali 
                                        </td>
                                        <td class="puntos">28</td>
                                        <td class="puntos">20</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>6</td>
                                        <td>25</td>
                                        <td>25</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">9</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/921.png" alt="Alianza Petrolera"></td>
                                        <td class="equipo">
                                            Alianza Petrolera 
                                        </td>
                                        <td class="puntos">28</td>
                                        <td class="puntos">20</td>
                                        <td>8</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>18</td>
                                        <td>24</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">10</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/597.png" alt="La Equidad"></td>
                                        <td class="equipo">
                                            La Equidad 
                                        </td>
                                        <td class="puntos">26</td>
                                        <td class="puntos">20</td>
                                        <td>5</td>
                                        <td>11</td>
                                        <td>4</td>
                                        <td>19</td>
                                        <td>20</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">11</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/175.png" alt="Bucaramanga"></td>
                                        <td class="equipo">
                                            Bucaramanga 
                                        </td>
                                        <td class="puntos">26</td>
                                        <td class="puntos">20</td>
                                        <td>7</td>
                                        <td>5</td>
                                        <td>8</td>
                                        <td>20</td>
                                        <td>22</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">12</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/180.png" alt="Pasto"></td>
                                        <td class="equipo">
                                            Pasto 
                                        </td>
                                        <td class="puntos">25</td>
                                        <td class="puntos">20</td>
                                        <td>6</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>16</td>
                                        <td>20</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">13</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/183.png" alt="Santa Fe"></td>
                                        <td class="equipo">
                                            Santa Fe 
                                        </td>
                                        <td class="puntos">24</td>
                                        <td class="puntos">20</td>
                                        <td>6</td>
                                        <td>6</td>
                                        <td>8</td>
                                        <td>21</td>
                                        <td>29</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">14</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/88.png" alt="Once Caldas"></td>
                                        <td class="equipo">
                                            Once Caldas 
                                        </td>
                                        <td class="puntos">22</td>
                                        <td class="puntos">20</td>
                                        <td>5</td>
                                        <td>7</td>
                                        <td>8</td>
                                        <td>21</td>
                                        <td>22</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">15</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/186.png" alt="U. Magdalena"></td>
                                        <td class="equipo">
                                            U. Magdalena 
                                        </td>
                                        <td class="puntos">22</td>
                                        <td class="puntos">20</td>
                                        <td>5</td>
                                        <td>7</td>
                                        <td>8</td>
                                        <td>21</td>
                                        <td>32</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">16</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/176.png" alt="Huila"></td>
                                        <td class="equipo">
                                            Huila 
                                        </td>
                                        <td class="puntos">19</td>
                                        <td class="puntos">20</td>
                                        <td>4</td>
                                        <td>7</td>
                                        <td>9</td>
                                        <td>18</td>
                                        <td>22</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">17</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/181.png" alt="Pereira"></td>
                                        <td class="equipo">
                                            Pereira 
                                        </td>
                                        <td class="puntos">19</td>
                                        <td class="puntos">20</td>
                                        <td>5</td>
                                        <td>4</td>
                                        <td>11</td>
                                        <td>19</td>
                                        <td>28</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">18</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/177.png" alt="Boyacá Chicó"></td>
                                        <td class="equipo">
                                            Boyacá Chicó 
                                        </td>
                                        <td class="puntos">19</td>
                                        <td class="puntos">20</td>
                                        <td>3</td>
                                        <td>10</td>
                                        <td>7</td>
                                        <td>15</td>
                                        <td>26</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">19</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/1655.png" alt="Jaguares"></td>
                                        <td class="equipo">
                                            Jaguares 
                                        </td>
                                        <td class="puntos">14</td>
                                        <td class="puntos">20</td>
                                        <td>3</td>
                                        <td>5</td>
                                        <td>12</td>
                                        <td>7</td>
                                        <td>21</td>
                                    </tr>
                                    <tr class="">
                                        <td class="pos">20</td>
                                        <td class="escudo"><img style="width:24px; height:24px;" src="https://statics-files.tycsports.com/escudos/182.png" alt="Envigado"></td>
                                        <td class="equipo">
                                            Envigado 
                                        </td>
                                        <td class="puntos">13</td>
                                        <td class="puntos">20</td>
                                        <td>2</td>
                                        <td>7</td>
                                        <td>11</td>
                                        <td>18</td>
                                        <td>32</td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 2-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="assets/img/logo.jpg" alt="..." /></div>
                    </div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <h2 class="display-4">Fotaleza el primer ascendido!</h2>
                            <p>El club de la capital consiguió el asenso tras remontarle la final al Deportivo Cúcuta. El siguiente año jugarán 4 equipos capitalinos en la primera división</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 3-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="assets/img/asenso.png" alt="..." /></div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">Así quedron los grupos de la B</h2>
                            <<h1>Grupo A</h1>
                            <p>1.Fortalez: 7Pts</p>
                            <p>2.Leones: 6Pts</p>
                            <p>3.Cartagena: 3Pts</p>
                            <p>4.Boca Juniors: 1Pt</p>
                            <<h2>Grupo B</h2>
                            <p>1.Cucuta 7Pts</p>
                            <p>2.Llaneros 4Pts</p>
                            <p>3.Barranquilla 3Pts</p>
                            <p>4.Atlético 2Pts</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-black">
            <div class="container px-5"><p class="m-0 text-center text-white small">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- Formulario de suscripción-->
        <section id="subscribe" class="bg-light">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-lg-2">
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">Recibe nuestro resumen</h2>
                            <p>Suscríbete para recibir actualizaciones sobre el fútbol colombiano.</p>
                            <!-- Formulario de suscripción -->
                            <form action="UserServlet" method="POST">
                                <label for="nombre">Nombre:</label>
                                <br>
                                <input type="text" id="nombre" name="nombre" required>
                                <br>
                                <label for="apellido">Apellido:</label>
                                <br>
                                <input type="text" id="apellido" name="apellido" required>
                                <br>
                                <label for="email">Correo:</label>
                                <br>
                                <input type="email" id="email" name="email" required>
                                <br><br>
                                <button type="submit" class="btn btn-success">Recibir correos</button>
                            </form>
                            <h2 class="display-4">Dejar de recibir mensajes</h2>
                            <p>¿Quieres dejar de recibir mensajes? Completa la siguiente información</p>
                            <form action="DeleteServlet" method="POST">
                                <label for="id">Id de Usuario:</label>
                                <br>
                                <input type="text" id="id" name="id" required>
                                <br><br>
                                <label for="email">Correo:</label>
                                <br>
                                <input type="email" id="email" name="email" required>
                                <br><br>
                                <button type="submit" class="btn btn-danger">Dejar de recibir</button>
                            </form>
                            <h2 class="display-4">Actualiza tu correo</h2>
                            <p>¿Cambiaste correo? Actualiza acá tu información</p>
                            <form action="UpdateServlet" method="POST">
                                <label for="id">Id de Usuario:</label>
                                <br>
                                <input type="text" id="id" name="id" required>
                                <br><br>
                                <label for="email">Correo actual:</label>
                                <br>
                                <input type="email" id="currenEmail" name="currentEmail" required>
                                <br><br>
                                <label for="email">Nuevo Correo:</label>
                                <br>
                                <input type="email" id="newEmail" name="newEmail" required>
                                <br><br>
                                <button type="submit" class="btn btn-info">Actualizar correo</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</html>