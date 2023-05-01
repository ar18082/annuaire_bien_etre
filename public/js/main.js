/*$(document).ready(function() {
    $('#nom').autocomplete({
        source: "{{ path('annonces_autocomplete_nom') }}",
        minLength: 2
    });
});
*/
/*
document.addEventListener('DOMContentLoaded', function() {
    const countrySelectEl = document.getElementById('recherche_region');
    countrySelectEl.addEventListener('change', function(e) {
        const formEl = countrySelectEl.closest('form');
        fetch(formEl.action, {
            method: formEl.method,
            body: new FormData(formEl)
        })
        .then(response => response.text())
        .then(html => {
            const parser = new DOMParser();
            const doc = parser.parseFromString(html, 'text/html');
            const newCityFormFieldEl = doc.getElementById('recherche_VilleName');
            newCityFormFieldEl.addEventListener('change', function(e) {
                e.target.classList.remove('is-invalid');
            });
            document.getElementById('recherche_villeName').replaceWith(newCityFormFieldEl);
        })
        .catch(function (err) {
            console.warn('Something went wrong.', err);
        });
    });
});*/

$(function() {
    var region = $("#search_region"); 
    console.log(region.val());
    $.ajax({
        url: '/auto/' + region.val(), 
        method: 'POST',
        dataType: 'Json', 
        success: function (response){
            console.log(Json.parse(response));
        }, 
        error : function (xhr, status, error){          
        },
        
    });
});

