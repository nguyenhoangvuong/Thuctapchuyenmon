<div class="header-nav animate-dropdown" style="background-image: url('../img/background.jpg');">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse"
                    class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Chuyển đổi điều hướng</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                    <div class="nav-outer">
                        <ul class="nav navbar-nav">
                            <li class="active dropdown yamm-fw">
                                <a href="index.php" data-hover="dropdown" class="dropdown-toggle">Home</a>
                            </li>
                            <?php $sql=mysqli_query($con,"select Id,Tentheloai  from tbltheloai limit 6");
                                while($row=mysqli_fetch_array($sql))
                                {
                            ?>
                            <li class="dropdown yamm">
                                <a href="category.php?cid=<?php echo $row['Id'];?>"><?php echo $row['Tentheloai'];?></a>
                            </li>
                            <?php } ?>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>