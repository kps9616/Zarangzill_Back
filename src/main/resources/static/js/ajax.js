function fn_get(form,apiUrl) {
    $.ajax({
        url: '/api/v1/'+apiUrl,
        method: 'GET',
        data: $("#"+form).serialize(),
        success: function(response) {
            console.log(response);

            return response;
        },
        error: function(error) {
            console.log(error);

            return error;
        }
    });
}

function fn_post(form,apiUrl) {

    $.ajax({
        url: '/api/v1/'+apiUrl,
        method: 'POST',
        data: $("#"+form).serialize(),
        success: function(response) {
            console.log(response);

            return true;
        },
        error: function(error) {
            console.log(error);

            return true;
        }
    });
}