

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






                        <div id="checkboxQuestionDiv" class="card-body">


                            <form action ="addCheckboxQuestion">


                                <input type="text" class="form-control mb-2" placeholder=" Question Text " name="checkboxQuestion" >

                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                       



                                <div class="list-group-item" id="container">

                                    <input type="checkbox" id="checkboxText" disabled  >
                                    <input  name="checkboxText" > </input>
                                    <br>
                                    <input type="checkbox" id="checkboxText" disabled >
                                    <input  name="checkboxText" > </input>

                                    <br>


                                </div> 





                                <div>

                                    <button class="btn btn-success" name="saveQuestion">Add Question</button>
                                </div>
                               </form>
                        </div>




                     




                        <button class="btn btn-success"  id="submit">Create Checkbox</button>


                    </div>

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
        checkbox.type = 'checkbox';
        checkbox.disabled = 'true'
        checkbox.class = 'form-control';
        checkbox.name = 'checkboxStatus';



        var label = document.createElement('input')
        label.name = 'checkboxText';

        var br = document.createElement('br');

        var container = document.getElementById('container');
        container.appendChild(checkbox);
        container.appendChild(label);
        container.appendChild(br);
    }

</script>     








</body>


