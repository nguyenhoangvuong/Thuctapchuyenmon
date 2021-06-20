<?php
  include('config1.php');
  if (isset($_POST['query'])) {
    $inpText = $_POST['query'];
    $sql = 'SELECT Tensanpham FROM tblsanpham WHERE Tensanpham LIKE :Ten';
    $stmt = $conn->prepare($sql);
    $stmt->execute(['Ten' => '%' . $inpText . '%']);
    $result = $stmt->fetchAll();

    if ($result) {
      foreach ($result as $row) {
        echo '<a href="#" class="list-group-item list-group-item-action border-1">' . $row['Tensanpham'] . '</a>';
      }
    } else {
      echo '<p class="list-group-item border-1">No Record</p>';
    }
  }
?>