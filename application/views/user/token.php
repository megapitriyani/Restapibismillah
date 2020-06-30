<section class="welcome p-t-10">
    <div class="page-content--bgf7  mb-3 ">
        <div class="col ml-10-mr-10">
            <div class="card ">
                <div class="card-header">
                    <i class="fa fa-user"></i>
                    <strong class="card-title pl-2">API Key</strong>
                </div>
                <div class="card-body">
                    <div class="mx-auto d-block">
                        <img class="rounded-circle mx-auto d-block" style="width:200px;height:200px;" src="<?= base_url('assets/'); ?>images/icon/profil.png" alt="Card image cap">
                        <h3 class="text-sm-center mt-2 mb-1"><?= $user['name']; ?></h3>
                        <hr>

                        <p>Gunakan API Key ini untuk menggunakan API Project Rekayasa Web. Untuk informasi lebih lanjut mengenai cara menggunakan API ini, silakan baca <strong><a href="http://localhost/bismillah/user">dokumentasi</a></strong>.</p>

                        <div class="alert alert-danger text-center" role="alert">

                            <a class="alert-link "><?= $key['key']; ?>
                        </div>
                        <p class="text-warning">
                            <small>
                                <strong>Peringatan:</strong> API key Anda berfungsi layaknya username dan password. Jaga baik-baik API key Anda!
                            </small>
                        </p>

                    </div>
                </div>
            </div>
        </div>