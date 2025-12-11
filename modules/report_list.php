<?php
include "./includes/connection.php";

$sql = "SELECT * FROM tbl_report";
$result = $conn->query($sql);

$conn->close();
?>

 <table class="table datatable">
                <thead>
                  <tr>
                    <th>Report ID</th>
                    <th>Crime Type</th>
                    <th data-type="date" data-format="YYYY/DD/MM">Date</th>
                    <th>Location</th>
                    <th>Victim</th>
                    <th>Suspect</th>
                    <th>Narrative</th>
                  </tr>
                </thead>
                <tbody>
                  <?php while($row = $result->fetch_assoc()) :?>
                  <tr>
                    <td><?php echo $row['crime_id']; ?></td>
                    <td><?php echo $row['crime_type']; ?></td>
                    <td><?php echo $row['date']; ?></td>
                    <td><?php echo $row['location']; ?></td>
                    <td><?php echo $row['victim_name']; ?></td>
                    <td><?php echo $row['suspect_name']; ?></td>
                    <td><?php echo $row['narrative']; ?></td>
                  </tr>
                  <?php endwhile; ?>