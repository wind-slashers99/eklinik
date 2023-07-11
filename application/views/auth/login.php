<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v4.1.1">
  <title><?= $title; ?></title>

  <!-- Bootstrap core CSS -->
  <link href="<?= base_url('/assets/'); ?>css/bootstrap.min.css" rel="stylesheet">

  <!-- Favicons -->
  <link rel="apple-touch-icon" href="/docs/4.5/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
  <link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
  <link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
  <link rel="manifest" href="/docs/4.5/assets/img/favicons/manifest.json">
  <link rel="mask-icon" href="/docs/4.5/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
  <link rel="icon" href="/docs/4.5/assets/img/favicons/favicon.ico">
  <meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
  <meta name="theme-color" content="#563d7c">


  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>
  <!-- Custom styles for this template -->
  <link href="signin.css" rel="stylesheet">
</head>

<body class="text-center">
  <div class="container py-5">
    <div class="row py-5">
      <div class="col-md-4 offset-md-4 py-5">
        <form class="form-signin" action="" method="post">
          <h1 class="h3 mb-3 font-weight-normal">Masuk</h1>
          <br>
          <center>
            <p>Repost by <a href='https://easydigital.id/' title='EASYDIGITAL' target='_blank'>Easy Digital</a></p>
          </center>

          <?= $this->session->flashdata('pesan'); ?>
          <div class="form-group">
            <label for="username" class="sr-only">Username</label>
            <input type="text" name="username" id="username" class="form-control" placeholder="Username" autofocus>
            <small class="muted text-danger"><?= form_error('username'); ?></small>
          </div>
          <div class="form-group">
            <label for="password" class="sr-only">Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="Password">
            <small class="muted text-danger"><?= form_error('password'); ?></small>
          </div>
          <div class="form-group">
            <button class="btn btn-lg btn-primary btn-block" type="submit">Masuk</button>
          </div>
          <p class="mt-5 mb-3 text-muted">&copy; <?= date('Y'); ?></p>
        </form>
      </div>
    </div>
  </div>

</body>

</html>