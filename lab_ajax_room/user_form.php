<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width inital-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
<!--====form secton start====-->
<div class="container w-50">
<div class="user-detail">
<div class="alert alert-dark md-4 mt-4">    
        <h2>เพิ่มข้อมูลห้อง</h2>
        <p id="msg"></p>
        <form id="userForm" method="POST">
        <label class ="form label">RoomName</lable>
        <input type="text" class="form-control w-50" placehoder="Enter Full Name" name="troomname" required><br>

        <label class ="form label">Detail</lable>
        <textarea class="form-control w-50" name="tdetail" rows="3"  required><br>

        <label class ="form label">roomtypeid</lable>
        <selct class="form-control w-50" name="troomtype">

<?php
    include"database.php";//ติดต่อฐานข้อมูล
    $sql="SELECT * FROM tbroomtype";
    $query=$conn->query($sql);
    while($row=$query->fetch_object()){ 
?>
    <option value="<?=$row->roomtypeid?>">
        <?=$row->roomtypename?></option>

<?php
    }
?>
</select><br>

        <button type="submit" name="bSubmitRoom" class="btn btn-waring">Submit</button>
    </form>
</div>
