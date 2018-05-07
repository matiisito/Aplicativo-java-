/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function submitLogIn() {
    var form = "form";
    if (validateForm(form)) {
        $('.btn').button('loading');
        $(form).submit();
    }
}

/**
 * Login Valida formulario
 */
function validateForm(id) {
    validacionInput = 0;
//	console.log('in validate input: ' + id);
    $('#' + id + '').find(":input:not(:hidden,:button,:submit)").each(
            function () {
//				console.log('testing ' + this.id);
                var optional = $(this).hasClass("optional");
                if (optional == false) {
                    $(this).css("border-color", "#cecece");
                    if (!this.value) {
                        $(this).css("border-color", "red");
                        $(this).focus();
//						console.log(this.id + ' est� vac�o');
                        validacionInput = 1;
                        return false;
                    }
                }
            });
    if (validacionInput == 0) {
        return true;
    } else {
        return false;
    }
}

