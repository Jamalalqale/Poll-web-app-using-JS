<%-- 
    Document   : controlAdmin
    Created on : Jun 6, 2020, 11:53:58 AM
    Author     : JOEY
--%>

<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="Items.StudentBean"%>
<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" a href="CSS/bootstrap.css"/>
    <title>View Records</title>
    
    
</head>
<body class="bg-light">
 
        <div class="container">
            <div class="row">
                <div class="col m-auto">
                    <div class="card mt-5">





                          <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3"> CPanel Admin</h3>
                        </div>

                        
                        
                        
                          <!-- taking values from java cache -->
                        <%
                            
                              String adminUsername = (String) request.getAttribute("adminUsername");
                              String adminPassword = (String) request.getAttribute("adminPassword");   
                          %>
                          
                          <script>
                              
                            localStorage.setItem("adminUsername", '<%=adminUsername%>');
                            localStorage.setItem("adminPassword", '<%=adminPassword%>');
                            
                          </script>
                          
                          
                        
 <!-- -------------------------------------------------------  Menu   ----------------------------------------------------------------------------------------------->


                        <nav class="navbar navbar-expand-lg navbar-light bg-light">

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>



                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">



                                    <form action="adminMenu">

                                        <button id="home"  name="home"  class="btn btn-link">Home</button>

                                    </form>
                                    
                                 



                                </ul>

                                <div  class="form-inline my-2 my-lg-0">     

                                    <a href="index.html">     <button id="logout" name="logout"   onclick="clearCache()"  class="btn btn-outline-danger my-2 my-sm-0"  type="button">Logout</button> </a>

                                </div>


                            </div>
                        </nav>




                        <script>

                            function clearCache() {

                                window.localStorage.clear();
                            }





                        </script>     


                        <!----------------------------------------------- End  Menu-------------------------------   -->            

                        
                        
                        
                        <p>
                        
                        
                        
                            <form action="addmanager.jsp" >                                                                            
                                <button class="btn btn-primary" name="insert"> Add Manager</button>
                            </form>
                          
    

                        <%

                              ArrayList<StudentBean> list = new ArrayList<StudentBean>();
                              list = (ArrayList<StudentBean>) request.getAttribute("studentList");
                              
                          %>

 


                        <table class="table table-bordered">
                            <tr>
                                
                                <td> Name </td>
                                <td> Username </td>
                                 <td> Email</td>
                                <td> Password </td>                                                               
                                
                            </tr>
 
                                          
                               <% for(int i = 0; i < list.size(); i++) {
                            StudentBean actor = new StudentBean();
                            actor = list.get(i);
                            //out.println(actor.getId());
                            //out.println(actor.getFirstname());
                            //out.println(actor.getLastname());
                        %>
  
                                     <tr>
                                      
                                        <td><%=actor.getname()%></td>
                                        <td><%=actor.getusername()%></td>
                                         <td><%=actor.getemail()%></td>
                                         <td><%=actor.getpassword()%></td>
                                        
                                          <td><a href="editmanager.jsp"><button class="btn btn-primary" onclick="getname(
                                                                                                                         <%=actor.getid()%>,
                                                                                                                         '<%=actor.getname()%>',
                                                                                                                          '<%=actor.getusername()%>',
                                                                                                                          '<%=actor.getemail()%>',
                                                                                                                          '<%=actor.getpassword()%>',
                                                                                                                          
                                                                                                                       

                                                                                                                          );">Edit</button></a></td>
                                          
                                     
                                        <td>
                                            
                                            <form action="deletemanager">
                                              <button  onclick="return confirm('Are you sure?');"  class="btn btn-danger" >Delete</button>
                                                 <input id="managerId"   type="hidden" name ="managerId" value="<%=actor.getid()%>" />
                                                 
                                     
                                        
                                            </form>
                                        </td>
                                        
                                        
                                       </tr>
                                        <%
                                        };
                                        %>
                            
                                                                                                                      
                                   
 
                        </table>


                        <script>
                        function getname (id,name,username,email,password,isactive){
                         localStorage.setItem("id", id);
                         localStorage.setItem("name", name);
                         localStorage.setItem("username", username);
                         localStorage.setItem("email", email);
                         localStorage.setItem("password", password);
                         
                         
                    
                       }
                        </script>
                      
                    
                                        



                    </div>
                </div>
            </div>
        </div>
    
</body>
</html>