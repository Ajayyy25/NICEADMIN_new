<?php
include "./includes/connection.php";

if (isset($_POST{'btn-submit'})){
  // echo '<script>alert("submit button is click");</script>';
$crime_type = $_POST['crime_type'];
$date = $_POST['incident_date'];
$location = $_POST['crime_location'];
$suspect = $_POST['persons_involved'];
$narrative = $_POST['brief_narrative'];

$sql = "INSERT INTO tbl_report (crime_type, date, location, suspect, narrative)
VALUES ('$crime_type', '$date', '$location', '$suspect', '$narrative')";

if ($conn->query($sql) === TRUE) {
  echo '<script>alert("New record added successfully");</script>';
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
}
$conn->close();
?>

<form action="" method="POST" class="row g-3">

  <h4 class="mb-3">Crime Report Form</h4>

  <div class="col-6">
    <label class="form-label">Type of Crime</label>
    <select class="form-select" name="crime_type">
      <option>Theft</option>
      <option>Robbery</option>
      <option>Assault</option>
      <option>Homicide</option>
      <option>Others</option>
    </select>
  </div>

  <div class="col-6">
    <label class="form-label">Date of Incident</label>
    <input type="date" class="form-control" name="incident_date">
  </div>

  <div class="col-12">
    <label class="form-label">Location</label>
    <input type="text" class="form-control" name="crime_location" placeholder="Street, Sitio, Zone">
  </div>

  <div class="col-12">
    <label class="form-label">Persons Involved</label>
    <input type="text" class="form-control" name="persons_involved" placeholder="Victim / Suspect names">
  </div>

  <div class="col-12">
    <label class="form-label">Brief Narrative</label>
    <textarea class="form-control" rows="3" name="brief_narrative"></textarea>
  </div>

  <div class="col-12">
    <button class="btn btn-primary w-100" type="submit" name="btn-submit">Submit</button>
  </div>

</form>
