

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


                        
                        
                            <div class="dropdown">
                            <button class="dropbtn">Add Question</button>
                            <div class="dropdown-content">


                                <button onclick="quesType(1);" class="btn btn-primary" >Short</button>                                  

                                <button onclick="quesType(2);" class="btn btn-primary" >Long</button>  

                                <button onclick="quesType(3);" class="btn btn-primary" >Checkbox</button>                                  

                                <button onclick="quesType(4);" class="btn btn-primary" >Radio</button>
                                
                                <button onclick="quesType(5);" class="btn btn-primary" >Number</button> 

                                <button onclick="quesType(6);" class="btn btn-primary" >Date</button>
                                



                            </div>
                        </div>
                        


<!---------------------------------------------------------------------   short    ------------------------------------------------------------------------------------------------->

                        <div id= "shortDiv"  class="card-body">


                          <!--  <form action ="addShortQuestion" >   -->

                                <input id ="shortQuestion"  type="text" class="form-control mb-2" placeholder="Short Question" name="shortQuestion" >
                                <input type="password" class="form-control mb-2" disabled placeholder="Short answer " name="password" >

                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                  

                               

                                
                                
                                 <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                  <button onclick="checkLenghth(1);" class="btn btn-success float-right " name="saveQuestion">Submit</button>
                                
                            </div>  
                                
                           
                        </div>






<!---------------------------------------------------------------------   Long    ------------------------------------------------------------------------------------------------->


                            <div id= "longDiv" style="display:none;"  class="card-body">
                                
                           <!-- <form action ="addLongQuestion"> -->

                                <input id ="longQuestion" type="text" class="form-control mb-2" placeholder="Long Question" name="longQuestion" >
                                <input type="password" class="form-control mb-2" disabled placeholder="Long answer " name="longAnswer" >


                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>




                                
                                
                                 <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                  <button onclick="checkLenghth(2);" class="btn btn-success float-right " name="saveQuestion">Submit</button>
                                
                            </div>  
                                

                    
                        </div>
<!---------------------------------------------------------------------   check    ------------------------------------------------------------------------------------------------->


                        <div id="checkboxDiv"  style="display:none;"  class="card-body">


                           <!-- <form action ="addCheckboxQuestion">  -->


                                <input  id= "checkboxQuestion"  type="text" class="form-control mb-2" placeholder="Checkbox Question" name="checkboxQuestion" >

                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                       



                                <div class="list-group-item" id="Checkboxcontainer">

                                    <input type="checkbox" name="checkboxStatus"  >
                                   <input  name="checkboxText" > </input> 
                                    
                                    
                                    
                                    <br>
                                   <input type="checkbox" name="checkboxStatus"  >
                                   <input  name="checkboxText" > </input> 

                                    <br>
                                    
                                    
                                    

                                </div>
                                <p><p><p><p>





                                    <button   class="btn btn-primary"  id="createCheckbox"   >Add new option</button>
                                    
                                    <button   onclick="deleteCheckedElement()" class="btn btn-danger"  id="createCheckbox"   >Delete</button>
                                    

                               
                                
                            <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                  <button onclick="checkLenghth(3);" class="btn btn-success float-right " name="saveQuestion">Submit</button>
                                
                            </div>  
                            
                        

                           

                    
                           
                        </div>




                 
 

<!---------------------------------------------------------------------   Radio    ------------------------------------------------------------------------------------------------->


                        <div id="radioDiv" style="display:none;"   class="card-body">  
                            
                            
                           <!-- <form action ="addRadioQuestion"> -->

                                <input id ="radioQuestion" type="text" class="form-control mb-2" placeholder="Radio Question" name="radioQuestion" >
                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>

                                <div class="list-group-item" id="Radiocontainer">


                                    <input class="form-check-input" type="checkbox" name="radioStatus" >
                                    <input class="form-check-label" name="radioText"> </input>

                                    <br>

                                    <input class="form-check-input" type="checkbox" name="radioStatus" >
                                    <input class="form-check-label" name="radioText"> </input>



                                    <br>


                                </div> 



                         
                          

                                                            <p><p><p><p>


                                        <button class="btn btn-primary"  id="createRadio">Add new option</button> 

                                     <button   onclick="deleteRadioElement()" class="btn btn-danger"   >Delete</button>
                                                     
                                     
                                     
                                     
                                  
                               
                            <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                  <button onclick="checkLenghth(4);" class="btn btn-success float-right " name="saveQuestion">Submit</button>
                                
                            </div>  
                           

                            
                            
                     

                          

                 
                            
                            
                        </div>


                       


<!---------------------------------------------------------------------   Number    ------------------------------------------------------------------------------------------------->

                      <div id= "numberDiv"  style="display:none;"   class="card-body">


                       

                                <input id ="numberQuestion"   type="text" class="form-control mb-2" placeholder="Number Question" name="numberQuestion" >
                                <input type="password" class="form-control mb-2" disabled placeholder="Number answer " name="password" >

                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                  

                           

                                
                                 <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                  <button onclick="checkLenghth(5);" class="btn btn-success float-right " name="saveQuestion">Submit</button>
                                
                            </div>  
                                
                                
                     
                        </div>




<!---------------------------------------------------------------------   Date    ------------------------------------------------------------------------------------------------->

                            <div id= "dateDiv"   style="display:none;"  class="card-body">


                      

                                <input id ="dateQuestion" type="text" class="form-control mb-2" placeholder="Date Question" name="dateQuestion" >
                                <input type="password" class="form-control mb-2" disabled placeholder="Date answer " name="password" >

                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                  

                             

                       
                                 <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                  <button onclick="checkLenghth(6);" class="btn btn-success float-right " name="saveQuestion">Submit</button>
                                
                            </div>  
                                
                                
                        </div>




<!---------------------------------------------------------------------   End    ------------------------------------------------------------------------------------------------->



                               <div  class="d-flex justify-content-center">                        
                             
                               <h7>   <label name="errorMsg"  id = "errorMsg" type="text"  class="text-danger" disabled > </label>  </h7>
                              </div>
                         
                         
                         
                    </div>
                </div>
            </div>
        </div>

        
        
        <script>
        
        
          function back(){
                                
                                var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
                                
                                window.open("showQuestionnaire?questionnaireId="+lastidQuestionnaire  ,"_self");                     

                            }
        
        
        
        
  function checkLenghth(type_code)       
     {
              
         var lastidQuestionnaire=document.getElementById("lastidQuestionnaire").value;
           
     // alert(type_code);
        if(type_code==1)// short
             
         { 
              var shortQuestion = document.getElementById("shortQuestion").value;
              if(shortQuestion.length<1)
                  document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                 else
                 {
                      document.getElementById("errorMsg").innerHTML ="";
                       window.open("addShortQuestion?shortQuestion="+shortQuestion+"&lastidQuestionnaire="+lastidQuestionnaire  ,"_self"); 
                  }
                 
                 
        }
        else  if(type_code==2) // long
        { 
                 
             var longQuestion = document.getElementById("longQuestion").value;
             
              if(longQuestion.length<1)
                  document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                 else
                 {
                      document.getElementById("errorMsg").innerHTML ="";
                       window.open("addLongQuestion?longQuestion="+longQuestion+"&lastidQuestionnaire="+lastidQuestionnaire  ,"_self"); 
                  }
               
                 
        }
             
          else  if(type_code==5)// number
          {
             var numberQuestion = document.getElementById("numberQuestion").value;
                  
             if(numberQuestion.length<1)
                  document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                 else
                 {
                      document.getElementById("errorMsg").innerHTML ="";
                        window.open("addNumberQuestion?numberQuestion="+numberQuestion+"&lastidQuestionnaire="+lastidQuestionnaire  ,"_self"); 
                  }
        }
             
             
     
        
        
             else  if(type_code==6)// date
          {
                   
               var dateQuestion = document.getElementById("dateQuestion").value;
                    
                if(dateQuestion.length<1)
                  document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                 else
                 {
                      document.getElementById("errorMsg").innerHTML ="";
                      window.open("addDateQuestion?dateQuestion="+dateQuestion+"&lastidQuestionnaire="+lastidQuestionnaire  ,"_self"); 

                  }
                 
        }
        
        
                else  if(type_code==3)// chechbox
          {
                   
           
                    var checkboxQuestion = document.getElementById("checkboxQuestion").value;
                    
                if(checkboxQuestion.length<1)
                  document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                 else
                 {  
                         var items=document.getElementsByName('checkboxText');
                                  var selectedItems="";
                                  var flag=0;
				for(var i=0; i<items.length; i++)
                                {
                                    //selectedItems=items[i].value;
                                    if(items[i].value.length<1)
                                        flag=1;
                                    else
                                        selectedItems=selectedItems+"&checkboxText="+items[i].value;
                                }
                                
                                if(flag==1)
                                    document.getElementById("errorMsg").innerHTML ="Checkboxs Shouldn't Be Empty";
                                else                                    
                                {
                                
                                     //alert(selectedItems);
                                     window.open("addCheckboxQuestion?checkboxQuestion="+checkboxQuestion+"&lastidQuestionnaire="+lastidQuestionnaire+selectedItems  ,"_self");
                                }
                                
                      //document.getElementById("errorMsg").innerHTML ="";
                     // window.open("addDateQuestion?dateQuestion="+dateQuestion+"&lastidQuestionnaire="+lastidQuestionnaire  ,"_self"); 

                  }
               
                  
                 
        }
        
        
                 else  if(type_code==4)// chechbox
          {
                   
           
                    var radioQuestion = document.getElementById("radioQuestion").value;
                    
                if(radioQuestion.length<1)
                  document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                 else
                 {  
                         var items=document.getElementsByName('radioText');
                                  var selectedItems="";
                                  var flag=0;
				for(var i=0; i<items.length; i++)
                                {
                                    //selectedItems=items[i].value;
                                    if(items[i].value.length<1)
                                        flag=1;
                                    else
                                        selectedItems=selectedItems+"&radioText="+items[i].value;
                                }
                                
                                if(flag==1)
                                    document.getElementById("errorMsg").innerHTML ="Checkboxs Shouldn't Be Empty";
                                else                                    
                                {
                                  
                                   
                                     window.open("addRadioQuestion?radioQuestion="+radioQuestion+"&lastidQuestionnaire="+lastidQuestionnaire+selectedItems  ,"_self");
                                }
                                
                      //document.getElementById("errorMsg").innerHTML ="";
                     // window.open("addDateQuestion?dateQuestion="+dateQuestion+"&lastidQuestionnaire="+lastidQuestionnaire  ,"_self"); 

                  }
               
                  
                 
        }
        
        
        
        
        
        
        
                 
          
           
     }// function
        </script>
        
        
          <script>
              
              function quesType(type_code){
                  //alert(type_code)
                  
                  
                  var shortdiv = document.getElementById("shortDiv");
                  var longDiv = document.getElementById("longDiv");
                  var checkboxDiv = document.getElementById("checkboxDiv");
                  var radioDiv = document.getElementById("radioDiv");
                  var numberDiv = document.getElementById("numberDiv");
                  var dateDiv = document.getElementById("dateDiv");
                  
                  if(type_code==1)
                  {                
                      shortdiv.style.display = "block";
                      longDiv.style.display = "none";
                      checkboxDiv.style.display = "none";
                      radioDiv.style.display = "none";
                      numberDiv.style.display = "none";
                      dateDiv.style.display = "none";
                      
                   }
                   else if(type_code==2)
                   {
                      shortdiv.style.display = "none";
                      longDiv.style.display = "block";
                      checkboxDiv.style.display = "none";
                      radioDiv.style.display = "none";
                      numberDiv.style.display = "none";
                      dateDiv.style.display = "none";
                       
                   }
                   
                   else if(type_code==3)
                   {
                       
                      shortdiv.style.display = "none";
                      longDiv.style.display = "none";
                      checkboxDiv.style.display = "block";
                      radioDiv.style.display = "none";
                      numberDiv.style.display = "none";
                      dateDiv.style.display = "none";
                       
                   }
                   
                   else if(type_code==4)
                   {
                       
                      shortdiv.style.display = "none";
                      longDiv.style.display = "none";
                      checkboxDiv.style.display = "none";
                      radioDiv.style.display = "block";
                      numberDiv.style.display = "none";
                      dateDiv.style.display = "none";
                       
                   }
                   
                    else if(type_code==5)
                   {
                       
                
                      
                      shortdiv.style.display = "none";
                      longDiv.style.display = "none";
                      checkboxDiv.style.display = "none";
                      radioDiv.style.display = "none";
                      numberDiv.style.display = "block";
                      dateDiv.style.display = "none";
                       
                   }
                   
                   
                    else if(type_code==6)
                   {
                       
                      shortdiv.style.display = "none";
                      longDiv.style.display = "none";
                      checkboxDiv.style.display = "none";
                      radioDiv.style.display = "none";
                      numberDiv.style.display = "none";
                      dateDiv.style.display = "block";
                   }
                   
                  
                  
              }// fun
              
              
         </script>

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

        
        
        <script>

    document.getElementById('createCheckbox').onclick = function () {
        var checkbox = document.createElement('input');
        checkbox.type = 'checkbox';
      
        checkbox.class = 'form-control';
        checkbox.name = 'checkboxStatus';



        var label = document.createElement('input')
        label.name = 'checkboxText';

        var br = document.createElement('br');

        var container = document.getElementById('Checkboxcontainer');
        container.appendChild(checkbox);
        container.appendChild(label);
        container.appendChild(br);
    }

</script>



      <script>




            document.getElementById('createRadio').onclick = function () {
                var checkbox = document.createElement('input');
                checkbox.type = 'checkbox';
    
                checkbox.class = 'form-control';
                checkbox.name = 'radioStatus';



                var label = document.createElement('input')
                label.name = 'radioText';

                var br = document.createElement('br');

                var container = document.getElementById('Radiocontainer');
                container.appendChild(checkbox);
                container.appendChild(label);
                container.appendChild(br);
            }

        </script> 
        
        
        
        
       <script> 
            
            function deleteCheckedElement(){
                
             
       
                                              
                                             
                                var items=document.getElementsByName('checkboxText');
                   
                                 var checked=document.getElementsByName('checkboxStatus');                           
                            
				for(var i=0; i<checked.length; i++)
                                            {       
                                                    if(checked[i].checked==true)
                                                    {
                                       
                                                          //alert(checked.length+"");
                                                         //removeElm(checked[i]);
                                                     
                                                         checked[i].parentElement.removeChild(checked[i]);
                                                         items[i].parentElement.removeChild(items[i]); 
                                              
                                                         
                                                    }
                                                }
                                                
                                                
                
            }
            
            
              function deleteRadioElement(){
                
             
       
                                              
                                             
                                var items=document.getElementsByName('radioText');
                   
                                 var checked=document.getElementsByName('radioStatus');                           
                            
				for(var i=0; i<checked.length; i++)
                                            {       
                                                    if(checked[i].checked==true)
                                                    {
                                       
                                                          //alert(checked.length+"");
                                                         //removeElm(checked[i]);
                                                     
                                                         checked[i].parentElement.removeChild(checked[i]);
                                                         items[i].parentElement.removeChild(items[i]); 
                                              
                                                         
                                                    }
                                                }
                                                
                                                
                
            }
            
            



       </script> 
        


    </body>


<style>

    .dropbtn {
        background-color: #4CAF50;
        color: white;
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #3e8e41;
    }


    body {font-family: Arial, Helvetica, sans-serif;}

    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
    }

    /* The Close Button */
    .close {
        color: #aaaaaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }
</style>