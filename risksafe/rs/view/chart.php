<?php

include_once("../controller/auth.php");
include_once("../config.php");

?>
<?php
$db = new db();
$conn = $db->connect();
$currentuser = $_SESSION["userid"];

// Retrieve the count of ineffective controls
$queryIneffective = "SELECT COUNT(*)
                    FROM as_auditcontrols
                    WHERE con_effect = 1 and con_user = '$currentuser' ";

$resultIneffective = $conn->query($queryIneffective);

if ($resultIneffective) {
  $rowIneffective = $resultIneffective->fetch_assoc();
  $ineffectiveCount = $rowIneffective['COUNT(*)'];
} else {
  echo "Error retrieving ineffective controls count: " . $conn->error;
}

// Retrieve the count of effective controls
$queryEffective = "SELECT COUNT(*)
                   FROM as_auditcontrols
                   WHERE con_effect = 2 and con_user = '$currentuser' ";

$resultEffective = $conn->query($queryEffective);

if ($resultEffective) {
  $rowEffective = $resultEffective->fetch_assoc();
  $effectiveCount = $rowEffective['COUNT(*)'];
} else {
  echo "Error retrieving effective controls count: " . $conn->error;
}

//not_slected
$querynot_slected = "SELECT COUNT(*)
                   FROM as_auditcontrols
                   WHERE con_effect = 0 and con_user = '$currentuser' ";

$resultnot_slected = $conn->query($querynot_slected);

if ($resultnot_slected) {
  $rownot_slected = $resultnot_slected->fetch_assoc();
  $not_slectedCount = $rownot_slected['COUNT(*)'];
} else {
  echo "Error retrieving not_slected controls count: " . $conn->error;
}


// Retrieve the total count of controls
$queryTotal = "SELECT COUNT(*)
               FROM as_auditcontrols
               WHERE con_user = '$currentuser'";

$resultTotal = $conn->query($queryTotal);

if ($resultTotal) {
  $rowTotal = $resultTotal->fetch_assoc();
 $totalCount = $rowTotal['COUNT(*)'];
} else {
  echo "Error retrieving total controls count: " . $conn->error;
}

$db->disconnect($conn);



//open incedent
$db = new db();
$conn = $db->connect();
$currentuser = $_SESSION["userid"];
$closed = "Closed";
$open = "Open";
$In_Progress = "In Progress";
// Retrieve the count of closed controls
$queryClose = "SELECT COUNT(*)
                    FROM as_incidents
                    WHERE in_status = '$closed' and in_user = '$currentuser' ";

$resultClose = $conn->query($queryClose);

if ($resultClose) {
  $rowClose = $resultClose->fetch_assoc();
   $CloseCount = $rowClose['COUNT(*)'];
} else {
  echo "Error retrieving status closed incident count: " . $conn->error;
}

//open incident
$queryOpen = "SELECT COUNT(*)
                    FROM as_incidents
                    WHERE in_status = '$In_Progress' and in_user = '$currentuser' ";

$resultOpen = $conn->query($queryOpen);

if ($resultOpen) {
  $rowOpen = $resultOpen->fetch_assoc();
 $OpenCount = $rowOpen['COUNT(*)'];
} else {
  echo "Error retrieving status open incident count: " . $conn->error;
}
//progress incident
$queryprogress = "SELECT COUNT(*)
                    FROM as_incidents
                    WHERE in_status = '$open' and in_user = '$currentuser' ";

$resultprogress = $conn->query($queryprogress);

if ($resultprogress) {
  $rowprogress = $resultprogress->fetch_assoc();
 $progressCount = $rowprogress['COUNT(*)'];
} else {
  echo "Error retrieving status open incident count: " . $conn->error;
}

//total incident
$queryincidentsTotal = "SELECT COUNT(*)
               FROM as_incidents
               WHERE in_user = '$currentuser'";

$resultincidentsTotal = $conn->query($queryincidentsTotal);

if ($resultincidentsTotal) {
  $rowincidentsTotal = $resultincidentsTotal->fetch_assoc();
  $totalincidentsCount = $rowincidentsTotal['COUNT(*)'];
} else {
  echo "Error retrieving total controls count: " . $conn->error;
}

// Retrieve incident counts for each priority
$queryproretyhigh = "SELECT COUNT(*) AS highCount
                     FROM as_incidents
                     WHERE in_priority = 'High' AND in_user = '$currentuser'";
$resultproretyhigh = $conn->query($queryproretyhigh);

$queryproretyvhigh = "SELECT COUNT(*) AS vhighCount
                      FROM as_incidents
                      WHERE in_priority = 'V High' AND in_user = '$currentuser'";
$resultproretyvhigh = $conn->query($queryproretyvhigh);

$queryproretyMedium = "SELECT COUNT(*) AS mediumCount
                       FROM as_incidents
                       WHERE in_priority = 'Medium' AND in_user = '$currentuser'";
$resultproretyMedium = $conn->query($queryproretyMedium);

$queryproretyLow = "SELECT COUNT(*) AS lowCount
                     FROM as_incidents
                     WHERE in_priority = 'Low' AND in_user = '$currentuser'";
$resultproretyLow = $conn->query($queryproretyLow);

// Initialize incident count variables
$highCount = 0;
$vhighCount = 0;
$mediumCount = 0;
$lowCount = 0;

// Check if the queries were successful
if ($resultproretyhigh && $resultproretyvhigh && $resultproretyMedium && $resultproretyLow) {
  // Fetch the counts from the query results
  $rowproretyhigh = $resultproretyhigh->fetch_assoc();
  $highCount = $rowproretyhigh['highCount'];

  $rowproretyvhigh = $resultproretyvhigh->fetch_assoc();
  $vhighCount = $rowproretyvhigh['vhighCount'];

  $rowproretyMedium = $resultproretyMedium->fetch_assoc();
  $mediumCount = $rowproretyMedium['mediumCount'];

  $rowproretyLow = $resultproretyLow->fetch_assoc();
  $lowCount = $rowproretyLow['lowCount'];
}

// Check if there is no data available
if ($highCount == 0 && $vhighCount == 0 && $mediumCount == 0 && $lowCount == 0) {
  $incidentCounts = array($vhighCount, $highCount, $mediumCount, $lowCount);
  $incidentPriorities = array("V High", "High", "Medium", "Low");} else {
  // Create an array with the incident counts and priorities
  $incidentCounts = array($vhighCount, $highCount, $mediumCount, $lowCount);
  $incidentPriorities = array("V High", "High", "Medium", "Low");
}





// Treatment success
$db = new db();
$conn = $db->connect();
$currentuser = $_SESSION["userid"];
// Retrieve the count of closed controls
$querysuccess = "SELECT COUNT(*)
                    FROM as_treatments
                    WHERE tre_status = 2 and tre_user = '$currentuser' ";

$resultsuccess = $conn->query($querysuccess);

if ($resultsuccess) {
  $rowsuccess = $resultsuccess->fetch_assoc();
   $successCount = $rowsuccess['COUNT(*)'];
} else {
  echo "Error retrieving status closed incident count: " . $conn->error;
}

//cancled incident
$queryCancelled = "SELECT COUNT(*)
                    FROM as_treatments
                    WHERE tre_status = 3 and tre_user = '$currentuser' ";

$resultCancelled = $conn->query($queryCancelled);

if ($resultCancelled) {
  $rowCancelled = $resultCancelled->fetch_assoc();
 $CancelledCount = $rowCancelled['COUNT(*)'];
} else {
  echo "Error retrieving status open incident count: " . $conn->error;
}
//progress incident
$query_progress = "SELECT COUNT(*)
                    FROM as_treatments
                    WHERE tre_status = 1 and tre_user = '$currentuser' ";

$result_progress = $conn->query($query_progress);

if ($result_progress) {
  $row_progress = $result_progress->fetch_assoc();
 $progress_Count = $row_progress['COUNT(*)'];
} else {
  echo "Error retrieving status open incident count: " . $conn->error;
}

//total incident
$querytreTotal = "SELECT COUNT(*)
               FROM as_treatments
               WHERE tre_user = '$currentuser'";

$resulttreTotal = $conn->query($querytreTotal);

if ($resulttreTotal) {
  $rowtreTotal = $resulttreTotal->fetch_assoc();
  $totaltreCount = $rowtreTotal['COUNT(*)'];
} else {
  echo "Error retrieving total controls count: " . $conn->error;
}
?>
  <!-- Include Chart.js library -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
  var ineffectiveCount = <?php echo $ineffectiveCount; ?>;
  var effectiveCount = <?php echo $effectiveCount; ?>;
  var totalCount = <?php echo $totalCount; ?>;
  var not_slectedCounts = <?php echo $not_slectedCount; ?>;

  var ctx = document.getElementById('controls-chart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'pie',
    data: {
      labels: [
        'Ineffective Controls (' + ineffectiveCount + ')',
        'Effective Controls (' + effectiveCount + ')',
        'Not selected (' + not_slectedCounts + ')',
        'Total Controls (' + totalCount + ')'
      ],
      datasets: [
        {
          data: [ineffectiveCount, effectiveCount, not_slectedCounts, totalCount],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)', // Red for ineffective controls
            'rgba(75, 192, 192, 0.2)', // Green for effective controls
            'rgba(54, 162, 235, 0.2)', // Blue for not slected
            'rgba(255, 206, 86, 0.2)'  // Yellow total controls 
            
          ],
          borderColor: [
            'rgba(255, 99, 132, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)'
          ],
          borderWidth: 1
        }
      ]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      plugins: {
        legend: {
          display: false
        }
      }
    }
  });
</script>

<!--incident chart-->
<script>
  var OpenCounts = <?php echo $OpenCount; ?>;
  var CloseCounts = <?php echo $CloseCount; ?>;
  var progressCounts = <?php echo $progressCount; ?>;
  var totalincidentsCounts = <?php echo $totalincidentsCount; ?>;

  var ctx2 = document.getElementById('incident-chart').getContext('2d');
  var chart2 = new Chart(ctx2, {
    type: 'pie',
    data: {
      labels: [
        'Open Incidents (' + OpenCounts + ')',
        'Closed Incidents (' + CloseCounts + ')',
        'In Progress Incidents (' + progressCounts + ')',
        'Total Incidents (' + totalincidentsCounts + ')'
      ],
      datasets: [
        {
          data: [OpenCounts, CloseCounts, progressCounts, totalincidentsCounts],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)', // Red for open incidents
            'rgba(75, 192, 192, 0.2)', // Green for closed incidents
            'rgba(54, 162, 235, 0.2)', // Blue for in-progress incidents
            'rgba(255, 206, 86, 0.2)' // Yellow for total incidents
          ],
          borderColor: [
            'rgba(255, 99, 132, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)'
          ],
          borderWidth: 1
        }
      ]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      plugins: {
        legend: {
          display: false
        }
      }
    }
  });
</script>

<!-- Tretments -->
<script>
  var successCounts = <?php echo $successCount; ?>;
  var CancelledCounts = <?php echo $CancelledCount; ?>;
  var progress_Counts = <?php echo $progress_Count; ?>;
  var totaltreCounts = <?php echo $totaltreCount; ?>;

  var ctx3 = document.getElementById('trements-chart').getContext('2d');
  var chart3 = new Chart(ctx3, {
    type: 'pie',
    data: {
      labels: [
        'Complete Tretments (' + successCounts + ')',
        'Canceld Treatments (' + CancelledCounts + ')',
        'In Progress Tretments (' + progress_Counts + ')',
        'Total Tretments (' + totaltreCounts + ')'
      ],
      datasets: [
        {
          data: [successCounts, CancelledCounts, progress_Counts, totaltreCounts],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)', // Red for open incidents
            'rgba(75, 192, 192, 0.2)', // Green for closed incidents
            'rgba(54, 162, 235, 0.2)', // Blue for in-progress incidents
            'rgba(255, 206, 86, 0.2)' // Yellow for total incidents
          ],
          borderColor: [
            'rgba(255, 99, 132, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)'
          ],
          borderWidth: 1
        }
      ]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      plugins: {
        legend: {
          display: false
        }
      }
    }
  });
</script>

<script>
// Retrieve the incident counts and priorities from PHP
var incidentCounts = <?php echo json_encode($incidentCounts); ?>;
var incidentPriorities = <?php echo json_encode($incidentPriorities); ?>;
var labels = ["V High", "High", "Medium", "Low"];

// Create a chart using Chart.js
var ctx = document.getElementById('incidentChart').getContext('2d');
var chart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: labels,
    datasets: [{
      label: 'Incident Priority',
      data: incidentCounts,
      backgroundColor: ['#FF0000', '#f99707', '#ffff00', '#00b050'],
    }]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true,
        ticks: {
          stepSize: 1
        }
      }
    }
  }
});
</script>

