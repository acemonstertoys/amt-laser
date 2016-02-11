var ready;
ready = function() {

  window.pete = $('.datatable').DataTable({
    // ajax: ...,
    // autoWidth: false,
    paging: false,
    dom: 'Bfrtip',
    buttons: [
      'copy', 'csv', 'excel', 'pdf', 'print'
    ]
    // pagingType: 'full_numbers',
    // processing: true,
    // serverSide: true,

    // Optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about available options.
    // http://datatables.net/reference/option/pagingType
  });


};

$(document).ready(ready);
$(document).on('page:load', ready);


