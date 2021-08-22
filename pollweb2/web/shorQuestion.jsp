

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



                        <!-- raking values from JS cache-->


                        <!--  <h1><span id="quesionnaireTitle"></span></h1>   -->
                        <!--  <h1><span id="lastidQuestionnaire"></span></h1>   -->






                        <div class="card-body">


                            <form action ="addShortQuestion" >

                                <input type="text" class="form-control mb-2" placeholder=" Question Text " name="shortQuestion" >
                                <input type="password" class="form-control mb-2" disabled placeholder=" Short answer " name="password" >

                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                  

                                <button class="btn btn-success" name="addQuestion">Add Question</button>

                            </form>
                        </div>






                    </div>
                </div>
            </div>
        </div>


        <script>

            //var quesionnaireTitle = localStorage['quesionnaireTitle'];
            var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
            //var isprivate = localStorage['isprivate'];
            // document.getElementById("quesionnaireTitle").innerHTML = quesionnaireTitle;
            //  document.getElementById("lastidQuestionnaire").innerHTML = lastidQuestionnaire;
            document.getElementById("lastidQuestionnaire").value = lastidQuestionnaire;
            //document.getElementById("quesionnaireTitle").value = quesionnaireTitle;
           // document.getElementById("isprivate").value = isprivate;


        </script>



    </body>


