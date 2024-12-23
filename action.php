<?PHP
    include"dbcon.php";
    if(isset($_REQUEST['bSubmitStudent'])){
    $firstname=$_REQUEST['tfirsname'];
    //รับค่าจาด textbox ที่ชื่อ tfirsname
    $lastname=$_REQUEST['tlastname'];
    $email=$_REQUEST['temail'];
    $address=$_REQUEST['taddress'];

    echo $firstname.$lastname.$address.$email;
    $sql="INSERT INTO tbstudent
            VALUE(null,'$firstname','$lastname','$address','$email')";
    $query=$conn->query($sql);
    echo "<META HTTP-EQUIV='refresh'
                            CONTENT='3; URL=lab2-2.php'>";

    }elseif(isset($_REQUEST['bSubmitRoom'])){
        $roomname=$_REQUEST['troomname'];
        $detail=$_REQUEST['tdetail'];
        $roomtype=$_REQUEST['troomtype'];
        echo $roomname."<br>".$detail."<br>".$roomtype;
        $sql="INSERT INTO tbroom
                VALUE(null,'$roomname','$detail','$roomtype')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='2; URL=lab2-4.php'>";
    }elseif(isset($_REQUEST['bSubmitBook'])){
        $bookname=$_REQUEST['tbookname'];
        $author=$_REQUEST['tauthor'];
        $price=$_REQUEST['tprice'];
        $stock=$_REQUEST['tstock'];
        $booktype=$_REQUEST['tbooktype'];
        echo $bookname.$author.$price.$stock.$booktype;
        $sql="INSERT INTO tbbook
                VALUE(null,'$bookname','$author','$price','$stock','$booktype')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='2; URL=lab3-1.php'>";
    }elseif(isset($_REQUEST['bSubmitBooktype'])){
        $booktypeid=$_REQUEST['tbooktype'];
        echo $booktypeid; 
        $sql="INSERT INTO tbbooktype
        VALUE(null,'$booktypeid')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='2; URL=lab3-2.php'>";
    }
?>