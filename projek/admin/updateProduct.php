<?php
include '/Applications/XAMPP/xamppfiles/htdocs/projek/functions.php';

if ($_GET['id'] > 0) {
    $tempUser = $_GET['id'];
}
$data = query("SELECT * FROM produk where Code_Produk = '$tempUser'");
foreach ($data as $row) :
    $tempProductID = $row['Code_Produk'];
    $tempKategori = $row['Code_Kategory'];
    $tempHarga = $row['Harga'];
    $tempNama = $row['Nama_Produk'];
    $tempDeskripsi = $row['Deskripsi'];
    $tempStock = $row['Stok_Produk'];
    $tempGambar = $row['Gambar'];
endforeach;
if (isset($_POST["Update"])) {
    if (updateProduct($_POST, $tempUser) > 0) {
        echo " <script> alert('Data berhasil diupdate!'); </script> ";
        header("Location: ../admin/product.php");
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
    <title>Update Product</title>
    <link rel="icon" type="image/png" sizes="32x32" href="../images/logo.png" />

    <link rel="stylesheet" href="../register/register.css" type="text/css" />
    <link rel="stylesheet" href="../admin/add.css" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" />
    <link rel="normal" href="http://localhost/projek/Normalize/Normalize.css" />
    <script src="../script.js"></script>
</head>

<body>
    <div class="content-body">
        <div class="form-wrapper">
            <form class="bg-white" method="POST">
                <h1 class="text-title">Update Stock</h1>
                <div class="field-group flex">
                    <div class="separate">
                        <label class="label" for="txt-barang">Nama Barang</label>
                        <input class="input" type="text" id="txt-barang" name="namaBarang" placeholder="<?php echo $tempNama ?>" required />
                    </div>
                    <div class="separate">
                        <label class="label" for="txt-kategori">Kategori</label>
                        <select class="input" id="txt-kategori" name="kategori" required>
                            <option disabled selected value>
                                -- Select An Option --
                            </option>
                            <option value="GPU">
                                Graphics Card
                            </option>
                            <option value="Displays">
                                Displays
                            </option>
                            <option value="Laptops">
                                Laptops
                            </option>
                        </select>
                    </div>
                </div>
                <div class="field-group flex">
                    <div class="separate">
                        <label class="label" for="txt-stock">Stock</label>
                        <input class="quantity input" type="number" id="txt-stock" name="stock" placeholder="<?php echo $tempStock ?>" required />
                    </div>
                    <div class="separate">
                        <label class="label" for="file">Add File</label>
                        <input class="password input" type="file" id="file" name="file" required />
                    </div>
                </div>
                <div class="field-group flex">
                    <div class="separate">
                        <label class="label" for="harga">Harga Barang</label>
                        <input class="input" type="number" id="harga" name="harga" min="0.1" step="0.1" max="10000" placeholder=" $ <?php echo $tempHarga ?>" required />
                    </div>
                </div>
                <div class="field-group flex" style="flex-direction: column">
                    <label class="label" for="txt-desk">Deskripsi Barang</label>
                    <textarea class="input" type="text" id="txt-desk" name="deskripsi" placeholder="<?php echo $tempDeskripsi ?>" required style="
              max-width: 840px;
              min-height: 200px;
            "></textarea>
                </div>
                <div class="field-group">
                    <input class="btn-submit" type="submit" name="Update" value="Update Data" />
                </div>
            </form>
            <div class="bg-white" style="border: none;">
                <a style="text-decoration: none; color: red;" href="../" class="link-register">Cancel</a>
            </div>
        </div>
    </div>


</body>

</html>