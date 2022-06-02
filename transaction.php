<?php
    include('nav.php');
?>

<div class="container">
    <h2>Transaction History</h2>
    <hr>
    <table>
        <thead>
            <th>Srno.</th>
            <th>Sender</th>
            <th>Receiver</th>
            <th>Amount</th>
            <th>Transfer Date</th>
        </thead>
        <tbody>
        <?php
        include('config.php');
        $sql = "SELECT * FROM trans";
        $result = mysqli_query($conn,$sql);
        while($rows=mysqli_fetch_assoc($result)){
            ?>
            <tr>
                <td><?php echo $rows['id'] ?></td>
                <td><?php echo $rows['sender']?></td>
                <td><?php echo $rows['receiver']?></td>
                <td><?php echo $rows['amount']?></td>
                <td><?php echo $rows['transfer_date']?></td>
            </tr>
            <?php
        }
        ?>
        </tbody>
    </table>
</div>
