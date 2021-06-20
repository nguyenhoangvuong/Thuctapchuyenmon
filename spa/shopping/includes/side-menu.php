<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head" style="font-family:times new roman"><i class="icon fa fa-align-justify fa-fw"></i> Thể loại</div>
    <nav class="yamm megamenu-horizontal" role="navigation">

        <ul class="nav">
            <li class="dropdown menu-item">
                <?php $sql=mysqli_query($con,"select Id,Tentheloai  from tbltheloai");
                    while($row=mysqli_fetch_array($sql))
                    {
                ?>
                <a style="font-family:times new roman" href="category.php?cid=<?php echo $row['Id'];?>" class="dropdown-toggle"><i
                        class="icon fa fa-desktop fa-fw"></i>
                    <?php echo $row['Tentheloai'];?></a>
                <?php }?>

            </li>
        </ul>
    </nav>
</div>