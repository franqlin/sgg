<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<c:set var="ctxPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <title>SGG</title>

        <!-- Bootstrap core CSS -->
        <link href="${ctxPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${ctxPath}/css/bootstrap-reset.css" rel="stylesheet">
        <!--external css-->
        <link href="${ctxPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="${ctxPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <link rel="stylesheet" href="${ctxPath}/css/owl.carousel.css" type="text/css">
        <!-- Custom styles for this template -->
        <link href="${ctxPath}/css/style.css" rel="stylesheet">
        <link href="${ctxPath}/css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <section id="container" class="">
            <!--header inicio-->
            <header class="header white-bg">
                <div class="sidebar-toggle-box">
                    <div data-original-title="Toggle Navigation" data-placement="right" class="icon-reorder tooltips"></div>
                </div>
                <!--logo inicio-->
                <a href="#" class="logo">S<span>GG</span></a>
                <!--logo fim-->
                <div class="nav notify-row" id="top_menu">
                    <!-- Area de notificacao -->
                    <ul class="nav top-menu">
                        <!-- consumo de produtos Notificacao -->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="icon-tasks"></i>
                                <span class="badge bg-success">${total_produtos}</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">Produtos consumidos</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Carne</div>
                                            <div class="percent">40%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Frango</div>
                                            <div class="percent">60%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Leite</div>
                                            <div class="percent">87%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 87%">
                                                <span class="sr-only">87% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Frios</div>
                                            <div class="percent">33%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                                                <span class="sr-only">33% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Ovos</div>
                                            <div class="percent">45%</div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>

                                    </a>
                                </li>
                                <li class="external">
                                    <a href="#">Ver todos os produtos</a>
                                </li>
                            </ul>
                        </li>
                        <!-- fim da notificacao -->
                        <!-- mensagens inicio-->
                        <li id="header_inbox_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="icon-envelope-alt"></i>
                                <span class="badge bg-important">${total_msg}</span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-red"></div>
                                <li>
                                    <p class="red">${total_msg} nova(s) mensagens</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="${ctxPath}/img/avatar-mini.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Sapo</span>
                                            <span class="time">Agora</span>
                                        </span>
                                        <span class="message">
                                            Fala, filho do Canso!!
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="${ctxPath}/img/avatar-mini2.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Leo Gall </span>
                                            <span class="time">10 min</span>
                                        </span>
                                        <span class="message">
                                            Partiu, Praia! 
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="${ctxPath}/img/avatar-mini3.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jéssica</span>
                                            <span class="time">3 hrs</span>
                                        </span>
                                        <span class="message">
                                            &Edot; ideia Afro!!!
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="${ctxPath}/img/avatar-mini4.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Nunes</span>
                                            <span class="time">Agora</span>
                                        </span>
                                        <span class="message">
                                            oi ...
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Ver todas as Mensagens</a>
                                </li>
                            </ul>
                        </li>
                        <!-- msg fim -->
                        <!-- notificacoes sistema inicio-->
                        <li id="header_notification_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                                <i class="icon-bell-alt"></i>
                                <span class="badge bg-warning">${total_alertas}</span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-yellow"></div>
                                <li>
                                    <p class="yellow">${total_alertas} Alerta</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="icon-bolt"></i></span>
                                        O sistema está insano!!!
                                        <span class="small italic">34 min</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">Ver todas as notificações</a>
                                </li>
                            </ul>
                        </li>
                        <!-- sistema -->
                    </ul>
                    <!--  fim das notificaçoes -->
                </div>
                <div class="top-nav ">
                    <!--Pesquisa e usuario-->
                    <ul class="nav pull-right top-menu">
                        <li>
                            <input type="text" class="form-control search" placeholder="Pesqusar">
                        </li>
                        <!-- Login do usuario-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <img alt="" src="${ctxPath}/img/avatar1_small.jpg">
                                <span class="username">${user.username}</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li><a href="#"><i class=" icon-suitcase"></i>Perfil</a></li>
                                <li><a href="#"><i class="icon-cog"></i>Configura&ccedil;&amacr;o</a></li>
                                <li><a href="${ctxPath}/logout"><i class="icon-key"></i>Sair</a></li>
                            </ul>
                        </li>
                        <!-- login fim -->
                    </ul>
                    <!--Pesquisa e usuario end-->
                </div>
            </header>
            <!--header fim-->
            <!--Menu Lateral-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a class="" href="${ctxPath}/login/">
                                <i class="icon-dashboard"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon-book"></i>
                                <span>Geladeira</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="${ctxPath}/geladeira/all">Ver todas</a></li>
                                <li><a class="" href="${ctxPath}/geladeira/novo">Novo</a></li>
                                <li><a class="" href="${ctxPath}/geladeira/localizacao">Localiza&ccedil;&atilde;o</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon-cogs"></i>
                                <span>Produtos</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="${ctxPath}/produto/all">Ver todos</a></li>
                                <li><a class="" href="${ctxPath}/produto/novo">Novo</a></li>
                            </ul>
                        </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="icon-"></i>
                            <span>Marcas</span>
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="${ctxPath}/marca/all">Ver todas</a></li>
                            <li><a class="" href="${ctxPath}/marca/novo">Novo</a></li>
                        </ul>
                    </li>
                    <!-- Fim do menu lateral end-->
                </div>
            </aside>
            <!--sidebar fim-->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <!--state overview start-->
                    <div class="row state-overview">
                        <div class="col-lg-3 col-sm-6">
                            <section class="panel">
                                <div class="symbol terques">
                                    <i class="icon-book"></i>
                                </div>
                                <div class="value">
                                    <h1>${totalGeladeira}</h1>
                                    <p>Geladeiras</p>
                                </div>
                            </section>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <section class="panel">
                                <div class="symbol red">
                                    <i class="icon-tags"></i>
                                </div>
                                <div class="value">
                                    <h1>140</h1>
                                    <p>Preços</p>
                                </div>
                            </section>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <section class="panel">
                                <div class="symbol yellow">
                                    <i class="icon-shopping-cart"></i>
                                </div>
                                <div class="value">
                                    <h1>345</h1>
                                    <p>supermercados</p>
                                </div>
                            </section>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <section class="panel">
                                <div class="symbol blue">
                                    <i class="icon-bar-chart"></i>
                                </div>
                                <div class="value">
                                    <h1>34.500</h1>
                                    <p>Gráfico Qualquer</p>
                                </div>
                            </section>
                        </div>
                    </div>
                    <!--state overview end-->

                    <div class="row">
                        <div class="col-lg-8">
                            <!--custom chart start-->
                            <div class="border-head">
                                <h3>Consumo</h3>
                            </div>
                            <div class="custom-bar-chart">
                                <div class="bar">
                                    <div class="title">JAN</div>
                                    <div class="value tooltips" data-original-title="${gcm.jan}%" data-toggle="tooltip" data-placement="top">${gcm.jan}%</div>
                                </div>
                                <div class="bar doted">
                                    <div class="title">FEB</div>
                                    <div class="value tooltips" data-original-title="${gcm.fev}%" data-toggle="tooltip" data-placement="top">${gcm.fev}%</div>
                                </div>
                                <div class="bar ">
                                    <div class="title">MAR</div>
                                    <div class="value tooltips" data-original-title="${gcm.mar}%" data-toggle="tooltip" data-placement="top">${gcm.mar}%</div>
                                </div>
                                <div class="bar doted">
                                    <div class="title">ABR</div>
                                    <div class="value tooltips" data-original-title="${gcm.abr}%" data-toggle="tooltip" data-placement="top">${gcm.abr}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">MAI</div>
                                    <div class="value tooltips" data-original-title="${gcm.mai}%" data-toggle="tooltip" data-placement="top">${gcm.mai}%</div>
                                </div>
                                <div class="bar doted">
                                    <div class="title">JUN</div>
                                    <div class="value tooltips" data-original-title="${gcm.jun}%" data-toggle="tooltip" data-placement="top">${gcm.jun}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">JUL</div>
                                    <div class="value tooltips" data-original-title="${gcm.jul}%" data-toggle="tooltip" data-placement="top">${gcm.jul}%</div>
                                </div>
                                <div class="bar doted">
                                    <div class="title">AGO</div>
                                    <div class="value tooltips" data-original-title="${gcm.ago}%" data-toggle="tooltip" data-placement="top">${gcm.ago}%</div>
                                </div>
                                <div class="bar ">
                                    <div class="title">SET</div>
                                    <div class="value tooltips" data-original-title="${gcm.set}%" data-toggle="tooltip" data-placement="top">${gcm.set}%</div>
                                </div>
                                <div class="bar doted">
                                    <div class="title">OUT</div>
                                    <div class="value tooltips" data-original-title="${gcm.out}%" data-toggle="tooltip" data-placement="top">${gcm.out}%</div>
                                </div>
                                <div class="bar ">
                                    <div class="title">NOV</div>
                                    <div class="value tooltips" data-original-title="${gcm.nov}%" data-toggle="tooltip" data-placement="top">${gcm.nov}%</div>
                                </div>
                                <div class="bar doted">
                                    <div class="title">DEZ</div>
                                    <div class="value tooltips" data-original-title="${gcm.dez}%" data-toggle="tooltip" data-placement="top">${gcm.dez}%</div>
                                </div>
                            </div>
                            <!--custom chart end-->
                        </div>
                        <div class="col-lg-4">
                            <!--new earning start-->
                            <div class="panel terques-chart">
                                <div class="panel-body chart-texture">
                                    <div class="chart">
                                        <div class="heading">
                                            <span>Consumo de Bebidas</span>
                                            <strong>$ 57,00 | 15%</strong>
                                        </div>
                                        <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                                    </div>
                                </div>
                                <div class="chart-tittle">
                                    <span class="title">Cervejas</span>
                                    <span class="value">
                                        <a href="#" class="active">Brahma</a>
                                        |
                                        <a href="#">Bohemia</a>
                                        |
                                        <a href="#">Kaiser</a>
                                    </span>
                                </div>
                            </div>
                            <!--new earning end-->

                            <!--Gráfico de consumo de frutas inicio-->
                            <div class="panel green-chart">
                                <div class="panel-body">
                                    <div class="chart">
                                        <div class="heading">
                                            <span>Frutas</span>
                                            <strong>23 Dias | 65%</strong>
                                        </div>
                                        <div id="barchart"></div>
                                    </div>
                                </div>
                                <div class="chart-tittle">
                                    <span class="title">Total - Consumo</span>
                                    <span class="value">76,54,678</span>
                                </div>
                            </div>
                            <!--Grafico de consumo de frutas end-->
                        </div>

                </section>
            </section>
            <!--Conteudo Principal Fim-->
        </section>

        <!-- js  -->
        <script src="${ctxPath}/js/jquery.js"></script>
        <script src="${ctxPath}/js/jquery-1.8.3.min.js"></script>
        <script src="${ctxPath}/js/bootstrap.min.js"></script>
        <script src="${ctxPath}/js/jquery.scrollTo.min.js"></script>
        <script src="${ctxPath}/js/jquery.nicescroll.js" type="text/javascript"></script>
        <script src="${ctxPath}/js/jquery.sparkline.js" type="text/javascript"></script>
        <script src="${ctxPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
        <script src="${ctxPath}/js/owl.carousel.js" ></script>
        <script src="${ctxPath}/js/jquery.customSelect.min.js" ></script>

        <!--common script for all pages-->
        <script src="${ctxPath}/js/common-scripts.js"></script>

        <!--script for this page-->
        <script src="${ctxPath}/js/sparkline-chart.js"></script>
        <script src="${ctxPath}/js/easy-pie-chart.js"></script>

    </body>
</html>
