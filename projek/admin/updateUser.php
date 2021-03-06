<?php

session_start();
error_reporting(0);

include '../functions.php';

if ($_GET['id'] > 0) {
    $tempUser = $_GET['id'];
}
$data = query("SELECT * FROM pelanggan where Id_Pelanggan = '$tempUser'");
foreach ($data as $row) :
    $tempNama = $row['Nama'];
    $tempEmail = $row['Email'];
    $tempStreet = $row['Street'];
    $tempCountry = $row['Country'];
    $tempCity = $row['City'];
    $tempDistrict = $row['District'];
    $tempZip = $row['zip'];
    $tempPhone = $row['Phone'];
endforeach;
if (isset($_POST["Update"])) {
    if (updateUser($_POST, $tempUser) > 0) {
        echo " <script> alert('Data berhasil diupdate!'); </script> ";
        header("Location: ../admin/index.php");
    } else {
        echo " <script> alert('Data tidak berhasil diupdate!'); </script> ";
    }
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update User Account</title>
    <link rel="icon" type="image/png" sizes="32x32" href="../images/logo.png" />

    <link rel="stylesheet" href="../register/register.css" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" />

    <link rel="normal" href="http://localhost/projek/Normalize/Normalize.css" />
    <script src="../script.js"></script>
</head>

<body>
    <div class="content-body">
        <div class="form-wrapper">
            <form class="bg-white" method="POST">
                <h1 class="text-title">Update User</h1>
                <div class="field-group flex">
                    <div class="separate">
                        <label class="label" for="txt-nama">Nama Lengkap</label>
                        <!-- name : nama -->
                        <input class="input" type="text" id="txt-nama" name="nama" placeholder="<?php echo $tempNama ?>" required />
                    </div>

                    <div class="separate">
                        <label class="label" for="txt-email">Email Address</label>
                        <!-- name : email -->
                        <input class="input" type="email" id="txt-email" name="email" placeholder="<?php echo $tempEmail ?>" required />
                    </div>
                </div>

                <div class="field-group flex">
                    <div class="separate">
                        <label class="label" for="txt-password">Password</label>
                        <div class="flex input">
                            <!-- name : pass -->
                            <input class="password" type="password" pattern=".{10,}" id="txt-password" name="pass" placeholder="Enter password" required />
                            <i class="far fa-eye-slash" id="hide" onclick="myFunction()"></i>
                            <i class="far fa-eye" id="show" onclick="myFunction()"></i>
                        </div>
                    </div>


                    <!-- confirm password -->
                    <div class="separate">
                        <label class="label" for="txt-c-password">Confirm Password</label>
                        <div class="flex input">
                            <!-- name : confirmPass -->
                            <input class="password" type="password" pattern=".{10,}" id="txt-c-password" name="confirmPass" placeholder="Enter password" required />
                            <i class="far fa-eye-slash" id="hide2" onclick="myFunction2()"></i>
                            <i class="far fa-eye" id="show2" onclick="myFunction2()"></i>
                        </div>
                    </div>
                </div>

                <div class="field-group flex">
                    <div class="separate">
                        <label class="label" for="txt-phone">Phone Number</label>
                        <!-- name : phone -->
                        <input class="input" type="text" pattern="[0-9].{10,}" id="txt-phone" name="phone" placeholder="<?php echo $tempPhone ?>" required />
                    </div>
                </div>

                <div class="field-group flex">
                    <label class="label" for="txt-nama">Address</label>
                </div>

                <div class="field-group flex">
                    <div class="separate">
                        <!-- name : street -->
                        <input type="street" name="street" class="input" placeholder="<?php echo $tempStreet ?>" required />
                    </div>

                    <div class="separate">
                        <!-- name : country -->
                        <input type="country" name="country" class="input" placeholder="<?php echo $tempCountry ?>" required />
                    </div>
                </div>

                <div class="field-group flex">
                    <div class="separate">
                        <!-- name : city -->
                        <input type="city" name="city" class="input" placeholder="<?php echo $tempCity ?>" required />
                    </div>

                    <div class="separate">
                        <!-- name : districts -->
                        <input type="districts" name="districts" class="input" placeholder="<?php echo $tempDistrict ?>" required />
                    </div>
                    <div class="separate">
                        <!-- name : zip -->
                        <input type="zip" name="zip" class="input" id="inputZip" placeholder="<?php echo $tempZip ?>" required />
                    </div>
                </div>
                <div class="field-group">
                    <!-- name : submit -->
                    <input class="btn-submit" type="submit" name="Update" value="Update" />
                </div>
            </form>
            <div class="bg-white" style="border: none; ">
                <a style="text-decoration: none; color: red;" href="index.php" class="link-register">Cancel</a>
            </div>
        </div>
    </div>
</body>

</html>