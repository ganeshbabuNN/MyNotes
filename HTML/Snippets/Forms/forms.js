var eResults;
var eForm;
var resultsContent = "";
var haveValidation = false;
var validOkay = true;

// display a string in the output div
function output( s ) {
    eResults.innerHTML += '<p>' + s + '</p>';
}

// display an error message in the output div
function errorOutput( s ) {
    eResults.innerHTML += '<p class="error">' + s + '</p>';
}

// clear the output div
function clearOutput() {
    eResults.innerHTML = '';
}

// check a form element with the validity API
function isValid( e ) {
    if(e.validity.valid === true) {
        return true;
    } else {
        m = e.validationMessage;
        errorOutput(e.name + ': ' + m);
        validOkay = false;
        return false;
    }
}

// return the display value of a form element
function dispValue( e ) {
    v = function(s) { return e.name + ': ' + s }

    if(e.type == "radio") {
        if(e.checked) return v(e.value);
        else return ""  ;
    }

    // for select-multiple display a comma-separated list
    if(e.type == "select-multiple") {
        a = [];
        for( var i = 0; i < e.length; ++i ) {
            if(e[i].selected) a.push(e[i].value);
        }
        return v(a.join(', '));
    }

    if(e.type == "checkbox") return v( e.checked ? "on" : "off" );

    else return v(e.value);
}

// display all the form elements
function display() {
    clearOutput();
    if(!haveValidation) {
        errorOutput('This platform does not support the HTML5 validation API.');
    }
    validOkay = true;
    for( var i = 0; i < eForm.length; ++i ) {
        var e = eForm.elements[i];
        var name = e.name;
        if(!haveValidation) output(dispValue(e));
        if(haveValidation && isValid(e)) {
            output(dispValue(e));
        }
    }
    return false;
}

function submitDisplay() {
    display();
    return validOkay;
}

function init() {
    // initialize elements
    eResults = document.getElementById('results');
    eForm = document.getElementById('f1');

    // check to see if the validation API is implemented
    haveValidation = (typeof eForm.elements[0].validity === 'object');
}

window.onload = init;
