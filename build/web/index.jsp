<%-- 
    Document   : index
    Created on : 29/07/2021, 15:35:00
    Author     : Jesus Arias
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Logica.Huesped"%>
<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Admin Hotel</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="css/elegant-icons-style.css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- full calendar css-->
        <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
        <!-- easy pie chart-->
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
        <!-- owl carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
        <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link rel="stylesheet" href="css/fullcalendar.css">
        <link href="css/widgets.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
        <link href="css/xcharts.min.css" rel=" stylesheet">
        <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
        <!-- mis estilos -->
        <link href="css/estilos.css" rel="stylesheet">
        <!-- =======================================================
          Theme Name: NiceAdmin
          Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
          Author: BootstrapMade
          Author URL: https://bootstrapmade.com
        ======================================================= -->
    </head>
    <!--/**** CONTROLADORA *****/ -->

    <%
        Controladora control = new Controladora();
    %>

    <!-- container section start -->
    <section id="container" class="">


        <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i
                        class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="index.jsp" class="logo">Hotel <span class="lite">Admin</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>
                </ul>
                <!--  search form end -->
            </div>

            <div class="top-nav notification-row">
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">

                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">Jenifer Smith</span>

                        </a>

                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
        </header>
        <!--header end-->

        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu">
                    <li class="active">
                        <a class="" href="index.jsp">
                            <i class="icon_house_alt"></i>
                            <span>Panel de Control</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_document_alt"></i>
                            <span>Registro</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub form_registros">
                            <li><a class="" href="form_Empleado.jsp">Ingrear Empleado</a></li>
                            <li><a class="" href="form_Huesped.jsp">Ingresar Huésped</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_desktop"></i>
                            <span>UI Fitures</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="general.html">Elements</a></li>
                            <li><a class="" href="buttons.html">Buttons</a></li>
                            <li><a class="" href="grids.html">Grids</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="" href="widgets.html">
                            <i class="icon_genius"></i>
                            <span>Widgets</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="chart-chartjs.html">
                            <i class="icon_piechart"></i>
                            <span>Charts</span>

                        </a>

                    </li>

                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_table"></i>
                            <span>Tablas</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="#listaEmpleados">Empleados Registrados</a></li>
                            <li><a class="" href="#listaHuespedes">Huespedes Registrados</a></li>
                        </ul>
                    </li>

                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_documents_alt"></i>
                            <span>Pages</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="profile.html">Profile</a></li>
                            <li><a class="" href="login.html"><span>Login Page</span></a></li>
                            <li><a class="" href="contact.html"><span>Contact Page</span></a></li>
                            <li><a class="" href="blank.html">Blank Page</a></li>
                            <li><a class="" href="404.html">404 Error</a></li>
                        </ul>
                    </li>

                </ul>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->

        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <!--overview start-->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Panel de Control</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-laptop"></i>Panel de Control</li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="info-box blue-bg">
                            <i class="fa fa-credit-card-alt"></i>
                            <div class="count">$6.674</div>
                            <div class="title">Precio Por Noche</div>
                        </div>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="info-box brown-bg">
                            <i class="fa fa-bed"></i>
                            <div class="count">200</div>
                            <div class="title">habitaciones Dispinibles</div>
                        </div>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="info-box dark-bg">
                            <i class="fa fa-address-card-o"></i>
                            <div class="count">121</div>
                            <div class="title">Huespedes Registrados</div>
                        </div>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->
                </div>

                <!--/.row-->

                <!--Botones de registro--> 


                <div class="col-lg-12 col-md-12">
                    <div class="panel panel-default">
                        <header class="panel-heading">
                            Registrar Huesped
                        </header>
                        <div class="panel-body btnRegtroIn col-lg-12">
                            <a class="btn btn-success btn-lg btn-block" href="form_Huesped.jsp" role="button">  Registrar Huesped  <i class="fa fa-users"aria-hidden="true"></i></a>

                            <a class="btn btn-primary btn-lg btn-block" href="form_Empleado.jsp" role="button">  Registrar Empleado  <i class="fa fa-user-circle-o"aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                </div



                <div class="row">

                    <div class="col-lg-12 col-md-12">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2><i class="fa fa-flag-o banderaOK " id="banderaOK"></i><strong> Ultimo Registro Ingresado</strong></h2>
                            </div>
                            <div class="panel-body">
                                <table id="dtHorizontalVerticalExample" class="table table-striped table-bordered table-sm "
                                       cellspacing="0" width="100%">
                                    <thead>
                                        <tr>

                                            <th scope="col">Nombre</th>
                                            <th scope="col">Apelldo</th>
                                            <th scope="col">Fecha de Nacimiento</th>
                                            <th scope="col">Numero. Doc</th>
                                            <th scope="col">Tipo. Doc</th>
                                            <th scope="col">Direccion</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="table-success">
                                            <td><%= session.getAttribute("nombre")%></td>
                                            <td><%= session.getAttribute("apellido")%></td>
                                            <td><%= session.getAttribute("fechaNac")%></td>
                                            <td><%= session.getAttribute("numDocumento")%></td>
                                            <td><%= session.getAttribute("tipoDocumento")%></td>
                                            <td><%= session.getAttribute("direccion")%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>

                </div>









                <!-- Tabla Usuaios -->

                <%
                    List<Empleado> listaEmpleados = control.traerEmpleados();
                %>

                <div class="row" id="listaEmpleados">

                    <div class="col-lg-12 col-md-12">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2><i class="fa fa-user-circle-o red"></i><strong>Empleados registrados</strong></h2>
                            </div>
                            <div class="panel-body">
                                <table id="dtHorizontalVerticalExample" class="table table-striped table-bordered table-sm "
                                       cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Acciones</th>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Fecha de Nac</th>
                                            <th>Numero. Doc</th>
                                            <th>Tipo. Doc</th>
                                            <th>Direccion</th>
                                            <th>Cargo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  for (Empleado emp : listaEmpleados) {
                                        %>
                                        <tr>
                                            <th scope="col"><a class="btn btn-warning btn-sm" href=""
                                                               title="Bootstrap 3 themes generator">Modificar</a>
                                                <a class="btn btn-danger btn-sm" href="" title="Bootstrap 3 themes generator">Eliminar</a>
                                            </th>

                                            <th scope="row"><%= emp.getId()%></th>
                                            <td><%= emp.getNombre()%></td>
                                            <td><%= emp.getApellido()%></td>
                                            <%
                                                //modifico el formato de fecha 
                                                SimpleDateFormat formateadorEmp = new SimpleDateFormat("dd-MM-yyyy");
                                            %>
                                            <td><%= formateadorEmp.format(emp.getFecha_Nac())%> </td>
                                            <td><%= emp.getNumDocumento()%>  </td>
                                            <td><%= emp.getTipoDocumento()%> </td>
                                            <td><%= emp.getDireccion()%> </td>
                                            <td><%= emp.getCargo()%> </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>

                </div>

                <!-- Tabla Usuario end -->

                <!-- Tabla Huespedes -->
                <%

                    List<Huesped> listaHuespedes = control.traerHuespedes();
                %>
                <div class="row" id="listaHuespedes">

                    <div class="col-lg-12 col-md-12">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2><i class="fa fa-users red"></i><strong>Huespedes registrados</strong></h2>
                            </div>
                            <div class="panel-body">
                                <table id="dtHorizontalVerticalExample" class="table table-striped table-bordered table-sm "
                                       cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Acciones</th>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Fecha de Nac</th>
                                            <th>Numero. Doc</th>
                                            <th>Tipo. Doc</th>
                                            <th>Direccion</th>
                                            <th>Profesión</th>
                                            <th>Habitación</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  for (Huesped huesp : listaHuespedes) {
                                        %>
                                        <tr>
                                            <th scope="col"><a class="btn btn-warning btn-sm" href=""
                                                               title="Bootstrap 3 themes generator">Modificar</a>
                                                <a class="btn btn-danger btn-sm" href="" title="Bootstrap 3 themes generator">Eliminar</a>
                                            </th>
                                            <th scope="row"><%= huesp.getId()%></th>
                                            <td><%= huesp.getNombre()%></td>
                                            <td><%= huesp.getApellido()%></td>
                                            <td>
                                                <%
                                                    SimpleDateFormat formateadorHuesp = new SimpleDateFormat("dd-MM-yyyy");
                                                %>
                                                <%= formateadorHuesp.format(huesp.getFecha_Nac())%></td>
                                            <td><%= huesp.getNumDocumento()%></td>
                                            <td><%= huesp.getTipoDocumento()%></td>
                                            <td><%= huesp.getDireccion()%></td>
                                            <td><%= huesp.getProfesion()%></td>
                                            <td>Triple</td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>

                </div>
                <!-- Tabla Huesped end -->



                </div>
                <div class="widget-foot">
                    <!-- Footer goes here -->
                </div>
                </div>
                </div>

                </div>

                </div>
                <!-- project team & activity end -->

            </section>
            <div class="text-right">
                <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
                    -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </section>
        <!--main content end-->
    </section>
    <!-- container section start -->

    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui-1.10.4.min.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js"></script>
    <!-- jQuery full calendar -->
    <script src="js/fullcalendar.min.js">
    </script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script>
        /* Tablas*/
        $(document).ready(function () {
            $('#dtHorizontalVerticalExample').DataTable({
                "scrollX": true,
                "scrollY": 200,
            });
            $('.dataTables_length').addClass('bs-select');
        });


        //knob
        $(function () {
            $(".knob").knob({
                'draw': function () {
                    $(this.i).val(this.cv + '%')
                }
            })
        });

        //carousel
        $(document).ready(function () {
            $("#owl-slider").owlCarousel({
                navigation: true,
                slideSpeed: 300,
                paginationSpeed: 400,
                singleItem: true

            });
        });

        //custom select box

        $(function () {
            $('select.styled').customSelect();
        });

        /* ---------- Map ---------- */
        $(function () {
            $('#map').vectorMap({
                map: 'world_mill_en',
                series: {
                    regions: [{
                            values: gdpData,
                            scale: ['#000', '#000'],
                            normalizeFunction: 'polynomial'
                        }]
                },
                backgroundColor: '#eef3f7',
                onLabelShow: function (e, el, code) {
                    el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
                }
            });
        });
    </script>

</html>
