<?php
    include("config.php");
?>
<?php
    include("nav.php");
?>

    <div class="container">
    <h2>View Customer</h2>
        <table>
            <thead>
                <th>Sr.no</th>
                <th>Name</th>
                <th>Email</th>
                <th>Balance</th>
                <th>Transfer</th>
            </thead>
            <tbody>
            <?php
            $sql = "SELECT * FROM userdetails";
            $result = mysqli_query($conn,$sql);
            while($rows=mysqli_fetch_assoc($result)){
                ?>
                <tr>
                    <td><?php echo $rows['id'] ?></td>
                    <td><?php echo $rows['name']?></td>
                    <td><?php echo $rows['email']?></td>
                    <td><?php echo $rows['balance']?></td>
                    <td><a href="transmon.php?id= <?php echo $rows['id'];?>"> <button type="button" class="button button1">Transact</button></a></td>
                </tr>
                <?php
            }
            ?>
            </tbody>
        </table>

    </div>


<?php
    include("foot.php");
?>