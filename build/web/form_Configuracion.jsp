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
                        <li class="sub-menu">
                        <a href="javascript:;" class=""href="form_Configuracion.jsp">
                            <i class="fa fa-cog" aria-hidden="true"></i>

                            <span>Configuracion</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub form_registros">
                            <li><a class="" href="form_Configuracion.jsp">Configurar General</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon_document_alt"></i>
                            <span>Registro</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="form_Empleado.jsp">Registrar Empleado</a></li>
                            <li><a class="" href="form_Huesped.jsp">Registrar Huésped</a></li>
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
                        <h3 class="page-header"> <i class="fa fa-cog" aria-hidden="true"></i>Configuracion General</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="panelControl.jsp">Inicio</a></li>
                            <li> <i class="fa fa-cog" aria-hidden="true"></i></i>Ingresar Huésped</li>
                        </ol>
                    </div>
                </div>


                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Configuracion General
                            </header>
                            <div class="panel-body">
                                <div class="form">
                                    <form class="form-validate form-horizontal " id="register_form" action="svHabitacion" method="POST">
                                        <div class="form-group ">
                                            <label for="nombre" class="control-label col-lg-2">Pisos <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class=" form-control" id="pisos" name="pisos" type="text" />
                                            </div>
                                        </div>

                                        <div class="form-group ">
                                            <label for="nombre" class="control-label col-lg-2">Apellido <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class=" form-control" id="apellido" name="apellido" type="text" />
                                            </div>
                                        </div>

                                        <div class="form-group ">
                                             
                                            <label for="fechaNac" class="control-label col-lg-2">Fecha de Nacimiento:<span class="required">*</span></label>
                                              <div class="col-lg-2">
                                                    
                                                    <input class="form-control daterangepicker" type="date" name="fecha_Nac" id="fecha_Nac">
                                                </div>
                                            
                                              <label for="numDocumento" class="control-label col-lg-2">Numero. Doc: <span class="required">*</span></label>
                                            <div class="col-lg-2">
                                                <input class="form-control" type="text" name="numDocumento"
                                                       id="numDocumento" placeholder="123456789">
                                            </div>
                                            
                                            <label for="tipoDocumento" class="control-label col-lg-2 form-label">Tipo. Doc: <span class="required">*</span></label>
                                            <div class="col-lg-2">
                                                <input class="form-control" list="datalistOptions"
                                                      name="tipoDocumento" id="tipoDocumento" placeholder="DNI">
                                               <datalist id="datalistOptions">
                                                    <option value="DNI">
                                                    <option value="LE">
                                                    <option value="LC">
                                                    <option value="PASAPORTE">
                                                    <option value="DNI EXTRANJERO">
                                                    <option value="OTRO">
                                                </datalist>
                                            </div>

                                        </div>

                                        <div class="form-group ">
                                            <label for="address" class="control-label col-lg-2">Direccion <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class=" form-control" id="direccion" name="direccion" type="text" />
                                            </div>
                                        </div>
                                        
                                          <div class="form-group ">
                                            <label for="cargo" class="control-label col-lg-2">Profesión<span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class=" form-control" id="profesion" name="profesion" type="text" />
                                            </div>
                                        </div>
                                        <!--
                                        <div class="form-group ">
                                            <label for="username" class="control-label col-lg-2">usuario <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control " id="username" name="username" type="text" />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="password" class="control-label col-lg-2">contraseña <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control " id="password" name="password" type="password" />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="confirm_password" class="control-label col-lg-2">Confirmar Contraseña <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control " id="confirm_password" name="confirm_password" type="password" />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="email" class="control-label col-lg-2">Email <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control " id="email" name="email" type="email" />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="agree" class="control-label col-lg-2 col-sm-3">Confirma<span class="required">*</span></label>
                                            <div class="col-lg-10 col-sm-9">
                                                <input type="checkbox" style="width: 20px" class="checkbox form-control" id="agree" name="agree" />
                                            </div>
                                        </div>
                                        -->
                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10 ">
                                                <button class="btn btn-primary" type="submit">Guardar</button>
                                              
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
