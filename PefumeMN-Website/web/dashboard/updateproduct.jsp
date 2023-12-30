

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }

            select {
                width: 32.3%;
                margin: 0;
                font-size: 100%;
                padding: 5px 10px 5px 10px;
                font-family: Segoe UI, Helvetica, sans-serif;
                border: 1px solid #D0D0D0;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                border-radius: 20px;
                outline: none;
            }
        </style>
    <body>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog" style="width: 100%">
                    <div class="modal-content">
                        <form id="form" action="editproduct" method="get">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Product</h4>
                                <a href="manager">
                                    <button style="position: absolute; right: 20px; top: 20px; color: black" type="button" class="close" data-dismiss="modal" 
                                            aria-hidden="true">&times;
                                    </button> 
                                </a>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label> 
                                    <input value="${detail.id}" name="id" type="text" class="form-control" readonly required>
                                </div> 
                                <div class="form-group">
                                    <label>Name</label>
                                    <input value="${detail.name}" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group" style="display: flex; align-items: center; justify-content: space-between">
                                    <label style="margin-right: 20px">Image</label>
                                    <div>
                                        <c:forEach var="img" items="${detail.image}">
                                            <img style="width: 200px; height: auto; margin-right: 10px;" src="${img}" mutiple>
                                        </c:forEach>
                                    </div>
                                    <input id="imageInput" name="image" type="file" multiple>
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input value="${detail.price}" name="price" type="number" step="0.01" min="0" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Describe</label>
                                    <textarea style="height: 200px" name="describe" class="form-control" required>${detail.describe}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <textarea name="quantity" class="form-control" required>${detail.quantity}</textarea>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" id="stringdateolb" value="${detail.date}">
                                    <label style="margin-bottom: 10px; width: 100%">Release Date</label>
                                    <input type="hidden" name="date" value="" id="here"/>
                                    <select class="bear-dates" id="dobDay"></select>
                                    <select class="bear-months" id="dobMonth"></select>
                                    <select class="bear-years" id="dobYear"></select>
                                </div>
                                <div class="form-group">
                                    <label>Discount</label>
                                    <textarea name="discount" class="form-control" required>${detail.discount}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Quantity per unit</label>
                                    <textarea name="quantityperunit" class="form-control" >${detail.classifyStr}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select style="padding: 4px 0" name="category" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listCC}" var="o">
                                            <option value="${o.id}">${o.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Supplier</label>
                                    <select style="padding: 4px 0" name="supplier" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listSup}" var="o">
                                            <option  value="${o.id}">${o.companyName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input onclick="submitForm()" type="button" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/main.js"></script>
        <script src="js/clickevents.js"></script>
        <script src="js/calender.js"></script>
        <script  type="text/javascript">
                                    function addOption(selectElement, value, text) {
                                        var option = document.createElement("option");
                                        option.value = value;
                                        option.text = text;
                                        selectElement.add(option);
                                    }

                                    var defaultReleaseDate = document.getElementById("stringdateolb").value;
                                    var defaultDateArray = defaultReleaseDate.split('-');
                                    var defaultDay = parseInt(defaultDateArray[2]);
                                    var defaultMonth = parseInt(defaultDateArray[1]);
                                    var defaultYear = parseInt(defaultDateArray[0]);

                                    var daysSelect = document.getElementById('dobDay');
                                    var monthsSelect = document.getElementById('dobMonth');
                                    var yearsSelect = document.getElementById('dobYear');

                                    for (var day = 1; day <= 31; day++) {
                                        addOption(daysSelect, day, day);
                                    }

                                    for (var month = 1; month <= 12; month++) {
                                        addOption(monthsSelect, month, month);
                                    }

                                    var currentYear = new Date().getFullYear();
                                    for (var year = currentYear; year >= 1900; year--) {
                                        addOption(yearsSelect, year, year);
                                    }

                                    daysSelect.value = defaultDay;
                                    monthsSelect.value = defaultMonth;
                                    yearsSelect.value = defaultYear;
        </script>
    </body>
</html>