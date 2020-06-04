$(document).ready(function() {
    $('table.dtTablePrin').DataTable({
        "ordering": false,
        "paging": false,
        "info": false
    });
} );

$(document).ready(function() {
    $('table.dtTableSec').DataTable({
     
        lengthMenu: [1, 5, 10],
        pageLength: 5,
        dom: "<'row'<'col-sm-12 col-md-6'l><'col-sm-12 col-md-6'f>>\n        <'table-responsive'tr>\n        <'row align-items-center'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 d-flex justify-content-end'p>>",
        language: {
            url:'https://cdn.datatables.net/plug-ins/a5734b29083/i18n/Spanish.json'   
        }
    });
} );