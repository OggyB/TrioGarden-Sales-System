$(document).ready(function () {

    function validateFirstName(sFirstName) {
        var firstNamesTrue = /^[A-Za-zÖöIıÜüĞğŞşÇç ]+$/;
        if (firstNamesTrue.test(sFirstName)) {
            return true;
        } else {
            return false;
        }
    }

    function validateLastName(sLastName) {
        var lastNamesTrue = /^[A-Za-zÖöIıÜüĞğŞşÇç]+$/;
        if (lastNamesTrue.test(sLastName)) {
            return true;
        } else {
            return false;
        }
    }

    function validatePhone(sPhone) {
        var phonesTrue = /^[0-9]+$/;
        if (phonesTrue.test(sPhone)) {
            return true;
        } else {
            return false;
        }
    }

    $('.firstNameValid').focusout(function () {
        var sFirstName = $('.firstNameValid').val();
        if ($(this).val() == '') {
            $(this).css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
            e.preventDefault();
        } else {
            $(this).css("border-color", "rgb(32, 191, 44)");
        }

        $('#ContentPlaceHolder1_btnKaydet').attr('disabled', false);
        if (validateFirstName(sFirstName) && $('.firstNameValid').val().length >= 3) {
            $(this).css("border-color", "rgb(32, 191, 44)");
        } else {
            $(this).css("border-color", "rgb(247, 51, 51)");
            $('##ContentPlaceHolder1_btnKaydet').attr('disabled', true);
        }
    });

    $('.lastNameValid').focusout(function () {
        var sLastName = $('.lastNameValid').val();
        if ($(this).val() == '') {
            $(this).css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
            e.preventDefault();
        } else {
            $(this).css("border-color", "rgb(32, 191, 44)");
        }

        $('#ContentPlaceHolder1_btnKaydet').attr('disabled', false);
        if (validateFirstName(sLastName) && $('.lastNameValid').val().length >= 3) {
            $(this).css("border-color", "rgb(32, 191, 44)");
        } else {
            $(this).css("border-color", "rgb(247, 51, 51)");
            $('##ContentPlaceHolder1_btnKaydet').attr('disabled', true);
        }
    });

    $('.phoneValid').focusout(function () {
        var sPhone = $('.phoneValid').val();
        if ($(this).val() == '') {
            $(this).css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
            // e.preventDefault();
        } else {
            $(this).css("border-color", "rgb(32, 191, 44)");
        }

        $('#ContentPlaceHolder1_btnKaydet').attr('disabled', false);
        if (validatePhone(sPhone) && $('.phoneValid').val().length >= 11) {
            $(this).css("border-color", "rgb(32, 191, 44)");
        } else {
            $(this).css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
        }
    });



    //$('.formValid').change(function (e) {
    //    var fVal = $('.formValid').val();
    //    if (fVal == 0) {
    //        alert("hayır");
    //        $('.formValid').css("border-color", "rgb(247, 51, 51)");
    //        $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
    //        e.preventDefault();
    //    } else {
    //        $('.formValid').css("border-color", "rgb(32, 191, 44)");
    //        alert("eeee");
    //    }

    //    $('#ContentPlaceHolder1_btnKaydet').attr('disabled', false);
    //    if (fVal == 0) {
    //        $(this).css("border-color", "rgb(32, 191, 44)");
    //    } else {
    //        $(this).css("border-color", "rgb(247, 51, 51)");
    //        $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
    //    }
    //});

    $(".formValid").change(function () {
        var selected = $(this).val();
        if (selected === "0") {
            $('.formValid').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);

        } else {
            $('.formValid').css("border-color", "rgb(32, 191, 44)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', false);
        }
    });


    $('#ContentPlaceHolder1_btnKaydet').click(function () {
        if ($(".firstNameValid").val() == '') {
            $(".firstNameValid").css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
        } else {
            $(".firstNameValid").css("border-color", "green");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', false);
        }
        if ($(".lastNameValid").val() == '') {
            $(".lastNameValid").css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
        }
        if ($(".phoneValid").val() == '') {
            $(".phoneValid").css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
        }


        var valSelect = $('.formValid').val();
        if (valSelect === "0") {
            $('.formValid').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_btnKaydet').attr('disabled', true);
        }

    });



    //--------- Müşteri Görüşme Detayları -----------




    //function validateMoney(sMoney) {
    //    var moneysTrue = /^[0-9]+$/;
    //    if (moneysTrue.test(sMoney)) {
    //        return true;
    //    } else {
    //        return false;
    //    }
    //}

    $(".formValid-g").change(function () {
        var selected = $(this).val();
        if (selected === "0") {
            $('.formValid-g').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);

        } else {
            $('.formValid-g').css("border-color", "rgb(32, 191, 44)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', false);
        }
    });

    $(".formValid-s").change(function () {
        var selected = $(this).val();
        if (selected === "0") {
            $('.formValid-s').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);

        } else {
            $('.formValid-s').css("border-color", "rgb(32, 191, 44)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', false);
        }
    });

    $(".formValid-o").change(function () {
        var selected = $(this).val();
        if (selected === "0") {
            $('.formValid-o').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);

        } else {
            $('.formValid-o').css("border-color", "rgb(32, 191, 44)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', false);
        }
    });

    $('.moneyValid').focusout(function () {
        //var sMoney = $('.moneyValid').val();
        if ($(this).val() == '') {
            $(this).css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);
        } else {
            $(this).css("border-color", "rgb(32, 191, 44)");
        }

        //$('#ContentPlaceHolder1_Button3').attr('disabled', false);
        //if (validateMoney(sMoney) && $('.moneyValid').val().length >= 1) {
        //    $(this).css("border-color", "rgb(32, 191, 44)");
        //} else {
        //    $(this).css("border-color", "rgb(247, 51, 51)");
        //    $('#ContentPlaceHolder1_Button3').attr('disabled', true);
        //}
    });

    $('#ContentPlaceHolder1_Button3').click(function () {

        var gorusmeTuru = $('.formValid-g').val();
        if (gorusmeTuru === "0") {
            $('.formValid-g').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);
        }

        if ($('.moneyValid').val() == '') {
            $('.moneyValid').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);
        }

        var satisOlas = $('.formValid-s').val();
        if (satisOlas === "0") {
            $('.formValid-s').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);
        }

        var odemeTuru = $('.formValid-o').val();
        if (odemeTuru === "0") {
            $('.formValid-o').css("border-color", "rgb(247, 51, 51)");
            $('#ContentPlaceHolder1_Button3').attr('disabled', true);
        }

    })

});