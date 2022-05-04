<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagination</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
        <h1 class="text-center">PAGINATION EXAMPLE</h1>
        <?php
        require_once('config.php');
        // Requested page
        $page = isset($_GET['page']) ? intval($_GET['page']) : 1;

        // Get the product count
        $r = mysqli_query($conn,"SELECT COUNT(*) FROM PRODUCTS WHERE BRAND='SAMSUNG'");
        $d = mysqli_fetch_row($r);
        $product_count = $d[0];

        $products_per_page = 4;

        // 55 products => $page_count = 3
        $page_count = ceil($product_count / $products_per_page);

        // You can check if $requested_page is > to $page_count OR < 1,
        // and redirect to the page one.

        if(isset($page) && $page != 0){
            $first_product_shown = ($page - 1) * $products_per_page;
        }
        else
        {
            $first_product_shown = ($requested_page - 1) * $products_per_page;
        }
    
        echo '<div class="my-5"><div class="row">';
        // Then we retrieve the data for this requested page
        $r = mysqli_query($conn, "SELECT * FROM PRODUCTS WHERE BRAND='SAMSUNG' LIMIT $first_product_shown, $products_per_page");

        while($d = mysqli_fetch_assoc($r)) {
            echo '<div class="col-md-3 card-body">';
            //var_dump($d);
                echo '<div class="card-title text-center">'.$d["pname"].'</div>';
                echo '<div class="card-text text-center"><small>Brand: '.$d["brand"].'</small></div>';
                echo '<div class="card-footer text-muted">'.$d["price"].'.00</div>';
            echo '<br></div>';
        }
        echo '</div></div>';


          // Ok, we write the page links  
          echo '<div class="d-flex justify-content-center">
          <nav aria-label="Page navigation example">
          <ul class="pagination">';
          for($i=1; $i<=$page_count; $i++) {
              if($i == $page) {
                  echo '<li class="page-item active"><a class="page-link" href="/pagination?page='.$i.'">'.$i.'</a></li>';
              } else {
                  echo '<li class="page-item"><a class="page-link" href="/pagination?page='.$i.'">'.$i.'</a></li>';  
              }
          }
          echo '</ul></nav></div>';
        ?>
    </div>
</body>
</html>
