<%
    System.out.println("test");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Base CSS -->
        <link rel="stylesheet" href="assets/css/basestyle/style.css">

        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <title> IS428: SG Trade Visualization </title>
        <script src="http://d3js.org/d3.v4.min.js"></script>
        <link rel="stylesheet" type="text/css"
              href="https://fonts.googleapis.com/css?family=Open+Sans:400,600">
        <style>
            #sequence {
                width: 1200px;
                height: 70px;
            }

            #legend {
                padding: 10px 0 0 3px;
            }

            #sequence text, #legend text {
                font-weight: 600;
                fill: #fff;
            }

            #chart {
                position: relative;
            }

            #chart path {
                stroke: #fff;
            }

            #explanation {
                position: absolute;
                top: 165px;
                left: 470px;
                width: 160px;
                text-align: center;
                color: #666;
                z-index: -1;
            }

            #percentage {
                font-size: 2.5em;
            }
        </style>
    </head>

    <body>
        <!-- Pre Loader-->
        <div class="loader-wrapper">
            <div class="spinner">
                <svg viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                <circle class="length" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="28"></circle>
                </svg>
                <svg viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                <circle fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="28"></circle>
                </svg>
                <svg viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                <circle fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="28"></circle>
                </svg>
                <svg viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                <circle fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="28"></circle>
                </svg>
            </div>
        </div>
        <!-- Pre Loader-->

        <section class="wrapper">
            <!-- SIDEBAR -->
            <aside class="sidebar sidebar-light">
                <nav class="navbar navbar-light bg-white">
                    <a class="navbar-brand m-0 py-2 brand-title" href="#"> Visual Analytics </a>
                    <span></span>
                    <a class="navbar-brand py-2 material-icons toggle-sidebar" href="#">menu</a>
                </nav>

                <nav class="navigation">
                    <ul>
                        <li class="active"><a href="index.html" title="Dashboard"><span class="nav-icon material-icons">public</span> Home </a></li>
                        <li class=""><a href="SGMerchandiseImportExport.html"><span class="nav-icon material-icons "> card_travel </span> SG Trades </a></li>
                        <li class=""><a href="ASEANTrades.html"><span class="nav-icon material-icons ">score</span> ASEAN Trades </a></li>
                        <li class=""><a href="SGTrade.html"><span class="nav-icon material-icons ">score</span> SG Trade </a></li>
                    </ul>
                </nav>

            </aside>

            <div class="content-area">

                <header class="header sticky-top">
                    <nav class="navbar px-sm-4 navbar-light bg-white">
                        <a class="navbar-brand py-2 d-md-none  m-0 material-icons toggle-sidebar" href="#">menu</a>
                        <ul class="navbar-nav flex-row ml-auto">
                            <li class="nav-item" data-toggle="tooltip" data-placement="bottom" title="Switch Application">
                                <a data-toggle="modal" href="#" data-target="#switchApp" class="nav-link"><span class="material-icons align-middle">apps</span></a>
                            </li>
                            <li class="nav-item ml-sm-3 user-logedin dropdown">
                                <a href="https://wiki.smu.edu.sg/18191is428g1/UserImport/UserExport" target="_blank" class="nav-link weight-400"><img src="image/250px-UIUXLogo.png" class="mr-2 rounded" width="28"> User Export / User Import</a>
                            </li>
                        </ul>
                    </nav>
                </header>

                <div class="content-wrapper">

                    <div class="row page-tilte align-items-center">
                        <div class="col-md-12">
                            <a href="#" class="mt-3 d-md-none float-right toggle-controls"><span class="material-icons">keyboard_arrow_down</span></a>
                            <h1 class="weight-300 h3 title"> Welcome Page </h1>
                        </div> 
                        <div class="col controls-wrapper mt-3 mt-md-0 d-none d-md-block ">
                            <div class="controls d-flex justify-content-center justify-content-md-end">
                                Welcome to Team UXUI (User eXport User Import)! 
                            </div>
                        </div>
                    </div> 

                    <div class="content">
                        <img src="image/250px-UIUXLogo.png" class="mr-2 rounded">
                    </div>
                    <footer class="footer">
                        <p class="text-muted m-0"><small class="float-right">Made with <span class="material-icons md-16 text-danger align-middle">favorite</span> by Ng Wei En, Sheryl Yeo and Vincent Koh </small></p>
                    </footer>
                </div>
            </div>
        </section>

        <div class="modal fade" id="switchApp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header px-4">
                        <h5 class="modal-title" id="exampleModalLabel">Select Application</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span class="material-icons ">close</span>
                        </button>
                    </div>
                    <div class="modal-body p-4">

                        <div class="row align-items-stretch app-switcher">
                            <div class="col-lg-3 col-6 mb-4">
                                <a href="index.html" class="text-dark">
                                    <div class="card h-100">
                                        <div class="card-body text-center">
                                            <span class="material-icons md-48 " style="color:#21C3E0;">bubble_chart</span>
                                            <p class="weight-400 m-0">Dashboard</p>
                                            <small class="weight-300 text-muted">This is some text within a card body.</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3 col-6 mb-4">
                                <a href="ecommerce-dashboard.html" class="text-dark">
                                    <div class="card h-100">
                                        <div class="card-body text-center">
                                            <span class="material-icons md-48 text-primary">security</span>
                                            <p class="weight-400 m-0">Ecommerce</p>
                                            <small class="weight-300 text-muted">This is some text within a card body.</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3 col-6 mb-4">
                                <a href="mailbox.html" class="text-dark">
                                    <div class="card h-100 active-app">
                                        <div class="card-body text-center">
                                            <span class="material-icons md-48 text-danger">blur_on</span>
                                            <p class="weight-400 m-0">Mail Box</p>
                                            <small class="weight-300 text-muted">This is some text within a card body.</small>
                                            <span class="material-icons app-selected md-16">check</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3 col-6 mb-4">
                                <a href="blogger-feed-list.html" class="text-dark">
                                    <div class="card h-100">
                                        <div class="card-body text-center">
                                            <span class="material-icons md-48 text-warning">camera</span>
                                            <p class="weight-400 m-0">Blogger</p>
                                            <small class="weight-300 text-muted">This is some text within a card body.</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/lib/moment.min.js"></script>
        <script src="assets/js/lib/jquery.min.js"></script>
        <script src="assets/js/lib/popper.min.js"></script>
        <script src="assets/js/bootstrap/bootstrap.min.js"></script>
        <script src="assets/js/chosen-js/chosen.jquery.js"></script>
        <script src="assets/js/custom.js"></script>
    </body>
</html>