<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.AdminDAO"%>
<%@page import="org.json.simple.JSONArray"%>

<%-- 
<%
String email=(String)session.getAttribute("email");
if(email!=null){
    if(!email.equals("admin")){
        response.sendRedirect("adminLogin.jsp");
    }
}
else{
    response.sendRedirect("adminLogin.jsp");
}
%>
--%>

<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootst…" rel="stylesheet" >

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/p…" ></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstr…" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>



</head>


<body style="background-color:#d7e5ca;">

   <header>
   <%-- <img alt="logo" src="logo.png" width="auto" height="80px" >--%>
   <jsp:include page="header.jsp"></jsp:include>       
    <jsp:include page="navigation.jsp"></jsp:include>  
 </header>
 
 
 <script>

function exportTableToExcel(tableID, filename = ''){
    var downloadLink;
    var dataType = 'application/vnd.ms-excel';
    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
    // Specify file name
    filename = filename?filename+'.xls':'Candidate_List.xls';
    
    // Create download link element
    downloadLink = document.createElement("a");
    
    document.body.appendChild(downloadLink);
    
    if(navigator.msSaveOrOpenBlob){
        var blob = new Blob(['\ufeff', tableHTML], {
            type: dataType
        });
        navigator.msSaveOrOpenBlob( blob, filename);
    }else{
        // Create a link to the file
        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
        // Setting the file name
        downloadLink.download = filename;
        
        //triggering the function
        downloadLink.click();
    }
}



</script>

 <style>
 
 #section
 {

margin-left:20%; 
 
 }
 
 table {
        
        
        
        
        border-collapse: collapse;
        width: 800px;
        height: 100px;
        border: 1px solid #bdc3c7;
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
    }
    
    tr {
        transition: all .2s ease-in;
        cursor: pointer;
    }
    th{
        text-align: center;
        font-size: 20px;
    }
    th,
    td {
    
        padding: 12px; 
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    
    #header {
        background-color: #16a085;
        color: #fff;
    }
    
    h1 {
        font-weight: 600;
        text-align: center;
        background-color: #16a085;
        color: #fff;
        padding: 10px 0px;
    }
    
    tr:hover {
        background-color: #f5f5f5;
        transform: scale(1.02);
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
    }
    
    @media only screen and (max-width: 768px) {
        table {
            width: 90%;
        }
        
    }
    
    
    .btn btn-primary,.d-grid gap-2
    {
    width:50px;
    height:40px;
    
    }
    
    
    
 </style>
 
    <div id="section" >
        <br/><br/>
          <table id="tblData" cellpadding="10" border="1" >
                <tr id="header">
                    <th>S.No.</th>
                    <th>Name</th>
                    <th>Email</th>
                     
                    <th>percentage</th>
                    <th>Accuracy</th>
                    <th>Total Marks(30)</th>
                    
                </tr>
            
        <%
        JSONArray array=AdminDAO.getResult();
        JSONObject obj;
                
        for(int i=0;i<array.size();++i){
            obj=(JSONObject)array.get(i);
       %>
       
                
                <tr>
                    <td>
                    <%=i+1%>
                    </td>
                    
                    <td>
                    <%=obj.get("name")%>
                    </td>

                    <td>
                    <%=obj.get("email")%>
                    </td>
                    
                   
                    
                    <td>
                      <%=obj.get("per")%>
                    </td>
                     <td>
                      <%=obj.get("acc")%>%
                    </td>
                    
                    <td>
                    <%=obj.get("points") %>
                    </td>
      
                </tr>
                                
        <%} %>
            </table> 
            <br>
            <div class="d-grid gap-1 col-7 mx-auto">
			<i class="bi bi-download">
        <button class="btn btn-primary"  type="button" onclick="exportTableToExcel('tblData')">Export Table Data To Excel File</button></i>
    </div>
</div>
</body>

</html>