<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Dashboard</h1>
    <div class="btn-toolbar mb-2 mb-md-0">
      <div class="btn-group mr-2">
        <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
        <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
      </div>
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
        <span data-feather="calendar"></span>
        This week
      </button>
    </div>
  </div>
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <h1 class="display-4">Selamat Datang <?= isset ($user['username']) ? $user['username'] : ''; ?> ,<br> di  KLINIK GRAHA ESTETIKA (Drg.Tina Ariani)
      </h1>
      <p class="lead">Jl. Letda Sujono No. 4A simp. Titi Sewa - Medan Tembung.</p>
    </div>
  </div>
</main>

    

  
