

<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" a href="CSS/bootstrap.css" />


        <title>View Records</title>



    </head>
    <body class="bg-light">

        <div class="container">
            <div class="row">
                <div class="col m-auto">
                    <div class="card mt-5">

                        <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3"> Add Question</h3>
                        </div>



                        <div class="card-body">  
                            <form action ="addRadioQuestion">

                                <input type="text" class="form-control mb-2" placeholder=" Question Text " name="radioQuestion" >


                                <div class="list-group-item" id="container">


                                    <input class="form-check-input" type="radio" name="radioStatus" id="radioStatus" disabled>
                                    <input class="form-check-label" name="radioText"> </input>

                                    <br>

                                    <input class="form-check-input" type="radio" name="radioStatus" id="radioStatus" disabled>
                                    <input class="form-check-label" name="radioText"> </input>


                                    <br>


                                </div> 



                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                          





                                <div>

                                    <button class="btn btn-success" name="saveQuestion">Add Question</button>
                                </div>

                            </form>

                        </div>


                        <div class="card-body">  

                            <button class="btn btn-success"  id="submit">Create Radio</button> 

                        </div>                                



                    </div>
                </div>
            </div>
        </div>




        <script>
     
            var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
   
            document.getElementById("lastidQuestionnaire").value = lastidQuestionnaire;


        </script>


        <script>




            document.getElementById('submit').onclick = function () {
                var checkbox = document.createElement('input');
                checkbox.type = 'radio';
                checkbox.disabled = 'true'
                checkbox.class = 'form-control';
                checkbox.name = 'radioStatus';



                var label = document.createElement('input')
                label.name = 'radioText';

                var br = document.createElement('br');

                var container = document.getElementById('container');
                container.appendChild(checkbox);
                container.appendChild(label);
                container.appendChild(br);
            }

        </script>     


    </body>


