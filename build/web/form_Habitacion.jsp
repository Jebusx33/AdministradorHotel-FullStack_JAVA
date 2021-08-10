<%-- 
    Document   : form_Usuario
    Created on : 29/07/2021, 16:33:27
    Author     : Jesus Arias
--%>

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
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

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


        <!-- custom form validation script for this page-->
        <script src="js/form-validation-script.js"></script>
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
    <!-- container section start -->
    <section id="container" class="">


        <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i
                        class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="panelControl.jsp" class="logo">Hotel <span class="lite">Admin</span></a>
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
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="username">Jenifer Smith</span>
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.png" style="width: 30px">
                            </span>
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
                        <a class="" href="panelControl.jsp">
                            <i class="icon_house_alt"></i>
                            <span>Panel de Control</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="form_Reserva.jsp">
                            <i class="fa fa-address-card-o" aria-hidden="true"></i>

                            <span>Reserva</span>

                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_document_alt"></i>
                            <span>Registro</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
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
                            <span>Tables</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="basic_table.html">Basic Table</a></li>
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
                            <li><a class="" href="sinLogin.jsp.html">404 Error</a></li>
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
                        <h3 class="page-header"><i class="fa fa-bed"></i></i>
                            Ingrear Habitacion</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="panelControl.jsp">Inicio</a></li>
                            <li><i class="fa fa-bed"></i></i>
                                Ingrear Habitacion</li>
                        </ol>
                    </div>
                </div>


                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Ingrese habitacion a registrar
                            </header>
                            <div class="panel-body">
                                <div class="form">
                                    <form class="form-validate form-horizontal " id="register_form" action="svHabitacion" method="POST">


                                        <div class="form-group ">

                                            <label for="tipoDocumento" class="control-label col-lg-2 form-label">Nombre de la habitacion<span ></span></label>
                                            <div class="col-lg-2">
                                                <select class="form-control input-lg m-bot15" id="nombreHabit" name="nombreHabit">
                                                    <option>Suite</option>
                                                    <option>Junior suite</option>
                                                    <option>Gran suite</option>
                                                    <option>Precidencial</option>
                                                </select>
                                            </div>


                                            <label for="tipoDocumento" class="control-label col-lg-2 form-label">Piso<span ></span></label>
                                            <div class="col-lg-2">
                                                <select class="form-control input-lg m-bot15" id="pisoHabit" name="pisoHabit">
                                                    <option value="1">Piso 1</option>
                                                    <option value="2">Piso 2</option>
                                                    <option value="3">Piso 3</option>
                                                    <option value="4">Piso 4</option>
                                                </select>
                                            </div>

                                            <label for="tipoDocumento" class="control-label col-lg-2 form-label">Tipo<span></span></label>
                                            <div class="col-lg-2">
                                                <select class="form-control input-lg m-bot15" id="tipoHabit" name="tipoHabit">
                                                    <option value="1">Single</option>
                                                    <option value="2">Double</option>
                                                    <option value="3">Triple</option>
                                                    <option value="4">Multipe</option>
                                                </select>
                                            </div>

                                        </div>



                                        <div class="form-group ">

                                            <label for="tipoDocumento" class="control-label col-lg-2 form-label">Precio por Noche $<span ></span></label>
                                            <div class="col-lg-2">
                                                <select class="form-control input-lg m-bot15" id="precioNoche" name="precioNoche">
                                                    <option>16580</option>
                                                    

                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button class="btn btn-primary" type="submit" value="Enviar">Guardar</button>
                                                <a class="btn btn-default" href="panelControl.jsp" role="button">Cancelar</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>


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

    <!-- jquery validate js -->
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>

    <!-- custom form validation script for this page-->
    <script src="js/form-validation-script.js"></script>
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
