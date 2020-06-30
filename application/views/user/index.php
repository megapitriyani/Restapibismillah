       <!-- PAGE CONTENT-->
       <div class="page-content--bgf7">
           <!-- BREADCRUMB-->
           <section class="au-breadcrumb2">
               <div class="container">
                   <div class="row">
                       <div class="col-md-12">
                           <div class="au-breadcrumb-content">
                               <div class="au-breadcrumb-left">
                                   <span class="au-breadcrumb-span">You are here:</span>
                                   <ul class="list-unstyled list-inline au-breadcrumb__list">
                                       <li class="list-inline-item active">
                                           <a>Home</a>
                                       </li>
                                   </ul>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </section>
           <!-- END BREADCRUMB-->

           <!-- WELCOME-->
           <section class="welcome p-t-10">
               <div class="container">
                   <div class="row">
                       <div class="col-md-12 ">
                           <h1 class="title-4" style="text-align: center;">Dokumentasi API Project Rekayasa Web</h1>
                           <hr class="line-seprate">
                       </div>
                   </div>
               </div>
           </section>
           <!-- END WELCOME-->

           <!-- STATISTIC CHART-->
           <section class="statistic-chart">

               <!-- /# column -->
               <div class="col-lg-12 mx-auto">
                   <div class="card">

                       <div class="card-header statistic__item--blue">
                           <h1>Negara</h1>

                       </div>
                       <div class="tab-content pl-2 pt-2" id="nav-tabContent">
                           <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                               <div class="table-responsive">
                                   <table class="table table-bordered table-data3">
                                       <tbody>
                                           <tr>
                                               <th>REST APi "NEGARA" digunakan untuk mendapatkan daftar nama Negara yang ada di Dunia.
                                                   untuk request api key maka gunakan method PUT di url:<br>
                                                   http://localhost/bismillah/api/key
                                                   inputkan field id_user = <font color="red"><?= $user['id_user']; ?> </font>, sedang login</th>
                                           </tr>
                                       </tbody>
                                   </table>
                               </div>
                           </div>
                       </div>
                       <p class="title-2 ml-4 mt-3"><strong>Authorization</strong></p>
                       <div class="card-body">
                           <div class="custom-tab">
                               <nav>
                               </nav>
                               <div class="tab-content pl-2 pt-2" id="nav-tabContent">
                                   <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                                       <div class="table-responsive">
                                           <table class="table table-bordered table-data3">
                                               <tbody>
                                                   <tr>
                                                       <th>Authorization digunakan untuk memberikan hak akses User untuk merequest method : GET, PUT, POST, & DELETE<br>
                                                           Username : admin<br>
                                                           Password : 1234</th>
                                                   </tr>
                                               </tbody>
                                           </table>
                                       </div>
                                   </div>
                               </div>
                               <hr>
                               <br>
                           </div>

                           <p class="title-2 ml-4 mt-3"><strong>Request</strong></p>
                           <div class="card-body">
                               <div class="custom-tab">
                                   <nav>
                                       <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                           <a class="nav-item nav-link" id="custom-nav-profile-tab" data-toggle="tab" href="#custom-nav-profile" role="tab" aria-controls="custom-nav-profile" aria-selected="false">GET : http://localhost/bismillah/api/negara</a>
                                       </div>
                                   </nav>
                                   <div class="tab-content pl-2 pt-2" id="nav-tabContent">
                                       <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                                           <div class="table-responsive">
                                               <table class="table table-bordered table-data3">
                                                   <tbody>
                                                       <tr>
                                                           <th>Parameter</th>
                                                           <th>Wajib</th>
                                                           <th>Tipe</th>
                                                       </tr>
                                                   <tbody>
                                                       <tr>
                                                           <th>id</th>
                                                           <th>Tidak</th>
                                                           <th>String</th>
                                                       </tr>
                                                       <tr>
                                                           <th>Authorization</th>
                                                           <th>Ya</th>
                                                           <th>String</th>
                                                       </tr>
                                                   </tbody>

                                                   </tbody>
                                               </table>
                                           </div>
                                       </div>
                                       <br>
                                       <p><strong>Catatan:</strong></p>
                                       <ul>
                                           <li>Jika ID Negara kosong, maka akan menampilkan semua Negara di Dunia.</li>
                                       </ul>
                                       <br>
                                   </div>
                                   <hr>
                                   <br>

                                   <p class="title-2 ml-4 mt-3"><strong>Request</strong></p>
                                   <div class="card-body">
                                       <div class="custom-tab">
                                           <nav>
                                               <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                   <a class="nav-item nav-link" id="custom-nav-profile-tab" data-toggle="tab" href="#custom-nav-profile" role="tab" aria-controls="custom-nav-profile" aria-selected="false">PUT : http://localhost/bismillah/api/negara</a>
                                               </div>
                                           </nav>
                                           <div class="tab-content pl-2 pt-2" id="nav-tabContent">
                                               <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                                                   <div class="table-responsive">
                                                       <table class="table table-bordered table-data3">
                                                           <tbody>
                                                               <tr>
                                                                   <th>Parameter</th>
                                                                   <th>Wajib</th>
                                                                   <th>Tipe</th>
                                                               </tr>
                                                           <tbody>
                                                               <tr>
                                                                   <th>Nama Negara</th>
                                                                   <th>Ya</th>
                                                                   <th>String</th>
                                                               </tr>
                                                               <tr>
                                                                   <th>Kode Negara</th>
                                                                   <th>Ya</th>
                                                                   <th>String</th>
                                                               </tr>
                                                               <tr>
                                                                   <th>Ibu Kota</th>
                                                                   <th>Ya</th>
                                                                   <th>String</th>
                                                               </tr>
                                                               <tr>
                                                                   <th>Bahasa Resmi</th>
                                                                   <th>Ya</th>
                                                                   <th>String</th>
                                                               </tr>
                                                               <tr>
                                                                   <th>Latitude</th>
                                                                   <th>Ya</th>
                                                                   <th>String</th>
                                                               </tr>
                                                               <tr>
                                                                   <th>Longitude</th>
                                                                   <th>Ya</th>
                                                                   <th>String</th>
                                                               </tr>
                                                               <tr>
                                                                   <th>Bendera</th>
                                                                   <th>Ya</th>
                                                                   <th>String</th>
                                                               </tr>
                                                           </tbody>

                                                           </tbody>
                                                       </table>
                                                   </div>
                                               </div>
                                               <br>
                                           </div>
                                           <hr>
                                           <br>

                                           <p class="title-2 ml-4 mt-3"><strong>Request</strong></p>
                                           <div class="card-body">
                                               <div class="custom-tab">
                                                   <nav>
                                                       <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                           <a class="nav-item nav-link" id="custom-nav-profile-tab" data-toggle="tab" href="#custom-nav-profile" role="tab" aria-controls="custom-nav-profile" aria-selected="false">POST : http://localhost/bismillah/api/negara</a>
                                                       </div>
                                                   </nav>
                                                   <div class="tab-content pl-2 pt-2" id="nav-tabContent">
                                                       <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                                                           <div class="table-responsive">
                                                               <table class="table table-bordered table-data3">
                                                                   <tbody>
                                                                       <tr>
                                                                           <th>Parameter</th>
                                                                           <th>Wajib</th>
                                                                           <th>Tipe</th>
                                                                       </tr>
                                                                   <tbody>
                                                                       <tr>
                                                                           <th>Nama Negara</th>
                                                                           <th>Ya</th>
                                                                           <th>String</th>
                                                                       </tr>
                                                                       <tr>
                                                                           <th>Kode Negara</th>
                                                                           <th>Ya</th>
                                                                           <th>String</th>
                                                                       </tr>
                                                                       <tr>
                                                                           <th>Ibu Kota</th>
                                                                           <th>Ya</th>
                                                                           <th>String</th>
                                                                       </tr>
                                                                       <tr>
                                                                           <th>Bahasa Resmi</th>
                                                                           <th>Ya</th>
                                                                           <th>String</th>
                                                                       </tr>
                                                                       <tr>
                                                                           <th>Latitude</th>
                                                                           <th>Ya</th>
                                                                           <th>String</th>
                                                                       </tr>
                                                                       <tr>
                                                                           <th>Longitude</th>
                                                                           <th>Ya</th>
                                                                           <th>String</th>
                                                                       </tr>
                                                                       <tr>
                                                                           <th>Bendera</th>
                                                                           <th>Ya</th>
                                                                           <th>String</th>
                                                                       </tr>
                                                                   </tbody>

                                                                   </tbody>
                                                               </table>
                                                           </div>
                                                       </div>
                                                       <br>
                                                       <br>
                                                   </div>
                                                   <hr>
                                                   <br>

                                                   <p class="title-2 ml-4 mt-3"><strong>Request</strong></p>
                                                   <div class="card-body">
                                                       <div class="custom-tab">
                                                           <nav>
                                                               <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                                   <a class="nav-item nav-link" id="custom-nav-profile-tab" data-toggle="tab" href="#custom-nav-profile" role="tab" aria-controls="custom-nav-profile" aria-selected="false">DELETE : http://localhost/bismillah/api/negara</a>
                                                               </div>
                                                           </nav>
                                                           <div class="tab-content pl-2 pt-2" id="nav-tabContent">
                                                               <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                                                                   <div class="table-responsive">
                                                                       <table class="table table-bordered table-data3">
                                                                           <tbody>
                                                                               <tr>
                                                                                   <th>Parameter</th>
                                                                                   <th>Wajib</th>
                                                                                   <th>Tipe</th>
                                                                               </tr>
                                                                           <tbody>
                                                                               <tr>
                                                                                   <th>id</th>
                                                                                   <th>Ya</th>
                                                                                   <th>String</th>
                                                                               </tr>
                                                                               <tr>
                                                                                   <th>Authorization</th>
                                                                                   <th>Ya</th>
                                                                                   <th>String</th>
                                                                               </tr>
                                                                           </tbody>

                                                                           </tbody>
                                                                       </table>
                                                                   </div>
                                                               </div>
                                                               <br>
                                                           </div>
                                                           <hr>
                                                           <br>

                                                       </div>
                                                   </div>
                                               </div>
                                               <!-- /# column -->
           </section>
           <!-- END STATISTIC CHART-->