
function monkeyPatchAutocomplete() {

    $.ui.autocomplete.prototype._renderItem = function( ul, item) {
        var suggestedText = item.label.substr(item.label.indexOf(this.term) + this.term.length);
        var t = item.label.replace(suggestedText,"<span style='font-weight:bold;'>" +
            suggestedText +
            "</span>");
        return $( "<li></li>" )
            .data( "item.uiAutocomplete", item )
            .append( "<a>" + t + "</a>" )
            .appendTo( ul );
    };
}


$(document).ready(function() {
    $('a[href$="' + this.location.pathname + '"]').parents('li').addClass('active');
    monkeyPatchAutocomplete();

    $('a[href="#toggle-search"], .navbar-bootsnipp .bootsnipp-search .input-group-btn > .btn[type="reset"]').on('click', function(event) {
        console.log("schiacciato");
        event.preventDefault();
        $('.navbar-bootsnipp .bootsnipp-search .input-group > input').val('');
        $('.navbar-bootsnipp .bootsnipp-search').toggleClass('open');
        $('a[href="#toggle-search"]').closest('li').toggleClass('active');

        if ($('.navbar-bootsnipp .bootsnipp-search').hasClass('open')) {
            /* I think .focus dosen't like css animations, set timeout to make sure input gets focus */
            setTimeout(function() {
                console.log("schiacciato2");
                $('.navbar-bootsnipp .bootsnipp-search .form-control').focus();
            }, 100);
        }
    });

    $(document).on('keyup', function(event) {
        if (event.which == 27 && $('.navbar-bootsnipp .bootsnipp-search').hasClass('open')) {
            $('a[href="#toggle-search"]').trigger('click');
        }
    });

    $(document).keydown(function(){

        // Get the input element and its value
        var i=$("#searchbox-text");
        var val=i.val();
        // Send request only if user types alphabet
        // because auto.jsp returns names of companies
        // which contains only alphabets
        if(val.match(/^[A-z]+$/))
        {
            // Send request and get the data
            $.get("/utils/autocomplete.jsp?term="+val,function(data){
                // put those items in autocomplete! That's it!
                i.autocomplete({
                    autoFocus: true,
                    source:data
                });
            });
        }

    });

});


$( function() {
    $( "#datepicker" ).datepicker();
} );

$(document).ready(function () {
    $('.carousel').carousel({interval: 4000});
});

function htmlbodyHeightUpdate() {
    var height3 = $(window).height()
    var height1 = $('.nav').height() + 50
    var height2 = $('.main').height()
    if (height2 > height3) {
        $('html').height(Math.max(height1, height3, height2) + 10);
        $('body').height(Math.max(height1, height3, height2) + 10);
    }
    else {
        $('html').height(Math.max(height1, height3, height2));
        $('body').height(Math.max(height1, height3, height2));
    }

}

$(document).ready(function () {
    htmlbodyHeightUpdate()
    $(window).resize(function () {
        htmlbodyHeightUpdate()
    });
    $(window).scroll(function () {
        height2 = $('.main').height()
        htmlbodyHeightUpdate()
    });
});

var ann=5;
var testo="";
var titolo="";

$(document).ready(function insert() {


    if (ann != 0){
        var i = 0;
        for(i =0 ; i< ann; i++){
            if (i%5==0){

            }
            testo= "Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam.Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam.Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam.Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam.";
            titolo = "Bau";
            console.log(" " + testo + " " +titolo);
            $('#nav-home').append(new_div(testo,titolo));
        }
    } else{
        document.getElementById('nav-home').style.dipslay = "none";
        $('#nav-home').append('<div class="nond"><h6>Nessun ordine disponibile</h6></div>');
    }


    console.log( "ready!" );



});

function new_div(testo,titolo){
    return (
        '<div class="row ann-block" id="ann">'+
            '<div class="col col-lg-9 col-md-9 col-sm-12 col-12 content-block" onclick="espandi()" id="text-block"><span class="titolo">'+titolo +'<br></span>'+ testo+
            /*'Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor anim. Velit non irureEt et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor anim. Velit non irureEt et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor anim. Velit non irure'+*/
            '</div>'+
        '<div class="col col lg-3" > ' +

                '<div class="col">'+
                    '<button class="btn">Edit</button>'+
                '</div>'+
                '<div class="col">'+
                    '<button class="btn">Delete</button>'+
                '</div>'+

        '</div> '+
            /*'<div class="col col-lg-6 col-md-6 col-sm-12 col-12 btn-block">'+
                '<div class="edit-btn" id="edit">'+
                    '<button class="btn btn-sm">'+
                    '<i class="zmdi zmdi-edit"></i><label id="testo">Edit</label>'+
                    '</button>'+
                '</div>'+
                '<div class="delete-btn" id="delete">'+
                    '<button class="btn btn-sm"><i class="zmdi zmdi-delete"></i><label id="testo">Delete</label></button>'+
                '</div>'+
            '</div>'+*/
        '<div>');
}