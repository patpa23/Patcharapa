<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width inital-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
<!--====form secton start====-->
<div class="container">
<div class="user-detail">
<div class="alert alert-dark md-4 mt-4">    
    <h2>Insert User Data</h2>
    <p id="msg"></p>
    <form id="userForm" method="POST">
        <label class ="form label">Full Name</lable>
        <input type="text" class="form-control" placehoder="Enter Full Name" name="fullName" required><br>
        <label class ="form label">Email Address</lable>
        <input type="email" class="form-control" placehoder="Enter Full Address" name="emailAddress" required><br>
        <label class ="form label">City</lable>
        <input type="city" class="form-control "  placehoder="Enter Full city" name="city" required><br>
        <label class ="form label">Country</lable>
        <input type="text" class="form-control "  placehoder="Enter Full Country" name="country" required><br>
        <button type="submit" class="btn btn-success">Submit</button>
    </form>
        </div>
    <h3 class="alert alert-info"> ตรวจสอบ user...</h3>
<div class="content"> 
    <table class="table table-striped">
        <thead>
            <th>ID</th>
            <th>FULLNAME</th>
            <th>EMILADDRESS</th>
            <th>CITY</th>
            <th>COUNTRY</th>
        </thead>
        <tbody>
<?php
    include"database.php";//ติดต่อฐานข้อมูล
    $sql="SELECT * FROM usertable";
    $query=$conn->query($sql);
    while($row=$query->fetch_object()){ 
?>
            <tr>
                <td><?=$row->id?></td>
                <td><?=$row->fullName?></td>
                <td><?=$row->emailAddress?></td>
                <td><?=$row->city?></td>
                <td><?=$row->country?></td>
            </tr>
<?php
    }
?>
        </tbody>
</table>
</div>
</div>
</div>
<!--====form secton start====-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="ajax-script.js"></script>
</body>
</html>

