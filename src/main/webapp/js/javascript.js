$('a[href$="' + this.location.pathname + '"]').parents('li').addClass('active');
console.debug(this.location.pathname);
$(function() {

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
            console.log(data);
            // put those items in autocomplete! That's it!
            i.autocomplete({
                autoFocus: true,
                source:data
            });
        });
    }

});
