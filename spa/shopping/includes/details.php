<?php
  require_once 'config1.php';

  if (isset($_POST['submit'])) {
    $countryName = $_POST['search'];

    $sql = 'SELECT * FROM countries WHERE country_name = :country_name';
    $stmt = $conn->prepare($sql);
    $stmt->execute(['country_name' => $countryName]);
    $row = $stmt->fetch();
  } else {
    header('location: .');
    exit();
  }
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Details</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css">
</head>

<body>
  <div class="container">
    <div class="row mt-5">
      <div class="col-5 mx-auto">
        <div class="card shadow text-center">
          <div class="card-header">
            <h1><?= $row['country_name'] ?></h1>
          </div>
          <div class="card-body">
            <h4><b>Country Code :</b> <?= $row['country_code'] ?></h4>
            <h4><b>City :</b> <?= $row['city'] ?></h4>
            <h4><b>Country ID :</b> <?= $row['id'] ?></h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>