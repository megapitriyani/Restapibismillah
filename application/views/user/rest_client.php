 <!-- DATA TABLE-->
 <section class="p-t-20">
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <h3 class="title-5 m-b-35">REST API</h3>
                 <div class="table-data__tool">
                 </div>
                 <div class="col-md-6" align="right">
                     <button type="button" id="add_button" class="btn btn-info btn-xs">Add</button>
                 </div>
             </div>
         </div>
         <div class="panel-body">
             <span id="success_message"></span>
             <table class="table table-bordered table-striped">
                 <thead>
                     <tr>
                         <th>Nama Negara</th>
                         <th>Kode Negara</th>
                         <th>Ibu Kota</th>
                         <th>Bahasa Resmi</th>
                         <th>Latitude</th>
                         <th>Lonigitude</th>
                         <th>Bendera</th>

                         <th>Edit</th>
                         <th>Delete</th>
                     </tr>
                 </thead>
                 <tbody>

                 </tbody>
             </table>
         </div>
     </div>
     </div>
     </body>

     </html>

     <div id="userModal" class="modal fade">
         <div class="modal-dialog">
             <form method="post" id="user_form">
                 <div class="modal-content">
                     <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal">&times;</button>
                         <h4 class="modal-title">Add User</h4>
                     </div>
                     <div class="modal-body">
                         <label>Enter Nama Negara</label>
                         <input type="text" name="nama_negara" id="nama_negara" class="form-control" />
                         <span id="nama_negara_error" class="text-danger"></span>
                         <br />

                         <label>Masukkan Kode Negara</label>
                         <input type="text" name="kode_negara" id="kode_negara" class="form-control" />
                         <br />

                         <label>Masukkan Ibu KOta</label>
                         <input type="text" name="ibu_kota" id="ibu_kota" class="form-control" />
                         <br />

                         <label>Masukkan Bahasa Resmi</label>
                         <input type="text" name="bahasa_resmi" id="bahasa_resmi" class="form-control" />
                         <br />

                         <label>Masukkan Latitude</label>
                         <input type="text" name="latitude" id="latitude" class="form-control" />
                         <br />

                         <label>Masukkan Longitude</label>
                         <input type="text" name="longitude" id="longitude" class="form-control" />
                         <br />

                         <label>Masukkan bendera</label>
                         <input type="text" name="bendera" id="bendera" class="form-control" />
                         <br />


                     </div>
                     <div class="modal-footer">
                         <input type="hidden" name="user_id" id="user_id" />
                         <input type="hidden" name="data_action" id="data_action" value="Insert" />
                         <input type="submit" name="action" id="action" class="btn btn-success" value="Add" />
                         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                     </div>
                 </div>
             </form>
         </div>
     </div>

     <script type="text/javascript" language="javascript">
         $(document).ready(function() {

             function fetch_data() {
                 $.ajax({
                     url: "<?php echo base_url(); ?>test_api/action",
                     method: "POST",
                     data: {
                         data_action: 'fetch_all'
                     },
                     success: function(data) {
                         $('tbody').html(data);
                     }
                 });
             }

             fetch_data();

             $('#add_button').click(function() {
                 $('#user_form')[0].reset();
                 $('.modal-title').text("Add User");
                 $('#action').val('Add');
                 $('#data_action').val("Insert");
                 $('#userModal').modal('show');
             });

             $(document).on('submit', '#user_form', function(event) {
                 event.preventDefault();
                 $.ajax({
                     url: "<?php echo base_url() . 'test_api/action' ?>",
                     method: "POST",
                     data: $(this).serialize(),
                     dataType: "json",
                     success: function(data) {
                         if (data.success) {
                             $('#user_form')[0].reset();
                             $('#userModal').modal('hide');
                             fetch_data();
                             if ($('#data_action').val() == "Insert") {
                                 $('#success_message').html('<div class="alert alert-success">Data Inserted</div>');
                             }
                         }

                         if (data.error) {
                             $('#nama_negara_error').html(data.nama_negara_error);
                             //  $('#last_name_error').html(data.last_name_error);
                         }
                     }
                 })
             });

             $(document).on('click', '.edit', function() {
                 var user_id = $(this).attr('id');
                 $.ajax({
                     url: "<?php echo base_url(); ?>test_api/action",
                     method: "POST",
                     data: {
                         user_id: user_id,
                         data_action: 'fetch_single'
                     },
                     dataType: "json",
                     success: function(data) {
                         $('#userModal').modal('show');
                         $('#first_name').val(data.first_name);
                         $('#last_name').val(data.last_name);
                         $('.modal-title').text('Edit User');
                         $('#user_id').val(user_id);
                         $('#action').val('Edit');
                         $('#data_action').val('Edit');
                     }
                 })
             });

             $(document).on('click', '.delete', function() {
                 var user_id = $(this).attr('id');
                 if (confirm("Are you sure you want to delete this?")) {
                     $.ajax({
                         url: "<?php echo base_url(); ?>test_api/action",
                         method: "POST",
                         data: {
                             user_id: user_id,
                             data_action: 'Delete'
                         },
                         dataType: "JSON",
                         success: function(data) {
                             if (data.success) {
                                 $('#success_message').html('<div class="alert alert-success">Data Deleted</div>');
                                 fetch_data();
                             }
                         }
                     })
                 }
             });

         });
     </script>
     <!-- END DATA TABLE-->