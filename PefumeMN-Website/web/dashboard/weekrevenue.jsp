<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Statistic</title>
        <link rel="icon" href="images/logo1.png"/>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!-- Material Design Bootstrap Ecommerce -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
        <!-- Your custom styles (optional) -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <style>
            body {
                margin: 0;
                padding: 0;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb5/3.8.1/compiled.min.css"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css"><style>body {
                background-color: #fbfbfb;
            }
            @media (min-width: 991.98px) {
                main {
                    padding-left: 240px;
                }
            }

            /* Sidebar */
            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                padding: 58px 0 0; /* Height of navbar */
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
                width: 240px;
                z-index: 600;
            }

            @media (max-width: 991.98px) {
                .sidebar {
                    width: 100%;
                }
            }
            .sidebar .active {
                border-radius: 5px;
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
            }

            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
            }</style>
    </head>
    <body>

        <!--Main Navigation-->
        <header>
            <jsp:include page="leftadmin.jsp"></jsp:include>
            </header>
        <jsp:include page="header_right.jsp"></jsp:include>
            <!--Main Navigation-->

            <!--Main layout-->
            <main>
                <div class="container pt-4">

                    <!-- Section: Main chart -->
                    <section class="mb-4" id="doanhThuThu">
                        <div class="card">
                            <div class="card-header py-3">
                                <h3 class="mb-0 text-center">
                                    <strong>Revenue by week</strong>
                                    <form id="f1" method="get" action="weekrevenue">
                                        <select name="year" class="form-control" id="dropdownYear" style="width: 120px;">
                                        <c:set var="currentYear" value="2023"/>
                                        <c:set var="endYear" value="2018"/>
                                        <c:forEach var="year" begin="0" end="${currentYear - endYear}">
                                            <option ${requestScope.year == (currentYear - year) ? "selected" : ""} value="${currentYear - year}">${currentYear - year}
                                            </option>
                                        </c:forEach>
                                    </select>
                                    <input style="width: 200px;" value="" type="week" class="form-control" id="weekInput" onclick="setDefaultWeek()">
                                    <input value="" type="hidden" class="form-control" name="from" id="from">
                                    <input value="" type="hidden" class="form-control" name="to" id="to">
                                    <input value="" type="hidden" class="form-control" name="month" id="month">
                                    <button style="width: 100px; padding: 0" class="form-control" type="button" onclick="submitForm()">Submit</button>
                                </form>
                            </h3>
                        </div>
                        <div class="card-body">
                            <canvas class="my-4 w-100" id="pieChart" height="380"></canvas>
                        </div>
                    </div>
                </section>
                <!-- Section: Main chart -->
            </div>
        </main>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!--Main layout-->
        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <!-- MDB Ecommerce JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>
        <script src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Free_3.8.1/js/mdb.min.js"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
        <script type="text/javascript">// Graph
                                        var ctxP = document.getElementById("pieChart").getContext('2d');

                                        var myPieChart = new Chart(ctxP, {
                                            type: 'pie',
                                            data: {
                                                labels: ["Sunday", "Saturday", "Friday", "Thursday", "Wednesday", "Tuesday", "Monday"],
                                                datasets: [{
                                                        data: [${totalMoney1}, ${totalMoney7}, ${totalMoney6}, ${totalMoney5}, ${totalMoney4}, ${totalMoney3}, ${totalMoney2}],
                                                        backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360", "#1874CD", "#CDB5CD"],
                                                        hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774", "#1E90FF", "#FFE1FF"]
                                                    }]
                                            },
                                            options: {
                                                responsive: true
                                            }
                                        });

                                        function submitForm(obj) {
                                            var year = document.getElementById("dropdownYear").value;
                                            const weekInput = document.getElementById('weekInput');
                                            const selectedWeek = weekInput.value;
                                            const [, week] = selectedWeek.split('-W');

                                            const startDate = getDateFromWeek(year, parseInt(week));

                                            const endDate = new Date(startDate);
                                            endDate.setDate(startDate.getDate() + 6);

                                            const month = startDate.toLocaleString('en-US', {month: 'long'});
                                            const monthNumber = getMonthNumber(month);

                                            const startDay = startDate.getDate();
                                            const endDay = endDate.getDate();

                                            document.getElementById("from").value = startDay;
                                            document.getElementById("to").value = endDay;
                                            document.getElementById("month").value = monthNumber;
                                            document.getElementById("f1").submit();
                                        }

                                        function getDateFromWeek(year, week) {
                                            const januaryFourth = new Date(year, 0, 4);
                                            const daysToAdd = (week - 1) * 7;
                                            januaryFourth.setDate(januaryFourth.getDate() + daysToAdd - januaryFourth.getDay() + 1);
                                            return januaryFourth;
                                        }

                                        function getMonthNumber(monthName) {
                                            const monthsMap = {
                                                'January': 1,
                                                'February': 2,
                                                'March': 3,
                                                'April': 4,
                                                'May': 5,
                                                'June': 6,
                                                'July': 7,
                                                'August': 8,
                                                'September': 9,
                                                'October': 10,
                                                'November': 11,
                                                'December': 12
                                            };

                                            return monthsMap[monthName];
                                        }

        </script>

        <script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
    </body>
</html>