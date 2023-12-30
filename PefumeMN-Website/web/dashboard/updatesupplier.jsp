

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
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Supplier</b> Information</h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog" style="width: 100%">
                    <div class="modal-content">
                        <form action="editsupplier" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Supplier Information</h4>
                                <a href="managersupplier">
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
                                    <label>Company Name</label>
                                    <input value="${detail.companyName}" name="companyName" type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Contact Name</label>
                                    <input value="${detail.contactName}" name="contactName" type="text" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Country</label>
                                    <input type="text" name="country" class="form-control" value="${detail.country}"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <textarea name="phone" class="form-control" required>${detail.phone}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Home Page</label>
                                    <textarea name="homepage" class="form-control" required>${detail.homepage}</textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <script  type="text/javascript">
        </script>
    </body>
</html>