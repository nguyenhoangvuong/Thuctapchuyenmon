<?php
	session_start();
    include('includes/config.php');
    $_SESSION['a'] = round($_SESSION['tp']/22950,2);
    if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
else{
    if (isset($_POST['submitcode'])) {
        mysqli_query($con,"update tblorders set Phuongthucthanhtoan='".$_POST['paymethod']."' where UserId='".$_SESSION['id']."' and Phuongthucthanhtoan is null ");
        unset($_SESSION['cart']);
        header('location:order-history.php');
	}
	?>
<div class="col-md-4">
    <div class="checkout-progress-sidebar ">
        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="unicase-checkout-title">Thanh toán</h4>
                </div>
                <div class="panel-body" style="width:230px;">
                    <ul class="nav nav-checkout-progress list-unstyled">
                        <li style="width:100%"><a href="payment-method.php"
                                style="font-family: times new roman;font-size:1.4rem;background-color:#66DD66;border-radius:20px;color:white;text-align:center;font-weight:600;width:165%">COD</a>
                        </li>
                        <li style="margin-top:5px;width:165%">
                            <div id="paypal-payment-button">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script
    src="https://www.paypal.com/sdk/js?client-id=ATqJoT8uledW83BN2RvdA4o9tptMnGw4EUVlV1na6YHhKgqXEHcJXE8t0EZLGsDr4mybfMJ5nXxL10vQ&disable-funding=credit,card">
</script>
<script>
paypal.Buttons({
    style: {
        color: 'blue',
        shape: 'pill'
    },
    createOrder: function(data, actions) {
        return actions.order.create({
            purchase_units: [{
                amount: {
                    value: '<?php echo $_SESSION['a'] ?>'
                }
            }]
        });
    },
    onApprove: function(data, actions) {
        return actions.order.capture().then(function(details) {
            console.log(details)
            window.location.replace("http://localhost:8080/Manage_Spa/spa/shopping/success.php")
        })
    },
    onCancel: function(data) {
        window.location.replace("http://localhost:8080/PayPal_Integration_PHP/Oncancel.php")
    }
}).render('#paypal-payment-button');
</script>
<?php }?>