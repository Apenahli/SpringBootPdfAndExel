$(document).ready(function () {

    $("#search").keyup(function () {

        var searchValue = $("#search").val();
        
       console.log(searchValue);

        searchEmployee(searchValue);
    });
});

function searchEmployee(searchValue) {

    $.post("/searchText/"+searchValue, {"searchValue": searchValue}
  
    , function (data, status) {
      
    	$("#customers").html(data);

    });

}
;