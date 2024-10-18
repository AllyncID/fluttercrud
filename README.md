# Pemrograman Mobile 3

Gunain source codenya ya teman teman....

Free PHP Code

# Connection.php
```
<?php

$hostname = "localhost";
$username = "root";
$password = "";
$database = "flutterdb";
$port = 3306;

$conn = mysqli_connect($hostname, $username, $password, $database, $port);
```

# Insertdata.php
```
<?php

include('connection.php');

$username = $_POST['username'];
$alamat = $_POST['alamat'];

if (!empty($username) || !empty($alamat)) {

    $sqlCheck = "SELECT * FROM users where username = '$username'";
    $result = mysqli_query($conn, $sqlCheck);
    $hasilCheck = mysqli_fetch_array($result);

    if ($hasilCheck[0] == 0) {
        $sql = "INSERT INTO users (username, alamat) VALUES ('$username', '$alamat')";
        $query = mysqli_query($conn, $sql);

        if (mysqli_affected_rows($conn) > 0) {
            print_r(json_encode("Data Berhasil Disimpan"));
        } else {
            echo "Data gagal disimpan";
        }
    } else {
        echo "Username sudah terdaftar";
    }
} else {
    echo "Username dan alamat tidak boleh kosong";
}

?>

```

# Deletedata.php
```
<?php

include('connection.php');

$id = $_POST['id'];

if (!empty($id)) {
    $sql = "SELECT * FROM users WHERE id = '$id'";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $hasilCheck = mysqli_fetch_array($result);

        if ($hasilCheck) {
            $sqlDelete = "DELETE FROM users WHERE id = '$id'";
            $query = mysqli_query($conn, $sqlDelete);

            if (mysqli_affected_rows($conn) > 0) {
                echo "Data berhasil dihapus";
            } else {
                echo "Data Gagal di hapus";
            }
         } else {
            echo "Data tidak ditemukan";
         }
    } else {
        echo "Query Gagal";
    }
} else {
    echo "ID tidak boleh kosong";
}
```

# Updatedata.php
```
<?php

include("connection.php");

$id = $_POST['id'];
$username = $_POST['username'];
$alamat = $_POST['alamat'];

if (!empty($id) &&!empty($username) &&!empty($alamat)) {
    $sql = "UPDATE users SET username='$username', alamat='$alamat' WHERE id='$id'";

    $query = mysqli_query($conn, $sql);

    if (mysqli_affected_rows($conn) > 0) {
        echo "Data berhasil diupdate";
    } else {
        echo "Data gagal diupdate";
    }
} else {
    echo "Data tidak boleh kosong";
}
```

# Readdata.php
```
<?php

header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');

include('connection.php');

$query = $conn->query("SELECT * FROM users");
$result = array();

while($rowData = $query->fetch_assoc()) {
    $result[] = $rowData;
}

echo json_encode($result);
```
