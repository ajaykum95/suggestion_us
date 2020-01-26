function blank(a) { if(a.value == a.defaultValue) a.value = ""; }
function unblank(a) { if(a.value == "") a.value = a.defaultValue; }

function SelectedURL(A){location.href=A;}


function validateLocation(fieldid,errorMSGdiv){
	var fieldValue=document.getElementById(fieldid).value.trim();
	var divId=document.getElementById(errorMSGdiv);
	var iChars = "!@#$%^&*()+=[]\';{}|\":<>?";
	for (var i = 0; i < fieldValue.length; i++) {
	if (iChars.indexOf(fieldValue.charAt(i)) != -1)
	{
	var MSG="Alphabet & Digit and . , - / allowed only.";
	var len =(fieldValue.length)-1;
	fieldValue=(fieldValue).substring(0,len);
	divId.innerHTML=MSG;
	document.getElementById(fieldid).value="";
	divId.style.color="red";
	return false;
	}
	}
		divId.innerHTML="";
		return true;  
	}

function requiredFieldValidation(fieldid,errorMSGdiv)
{
var MSG=fieldid + " is required.";
var fieldValue=document.getElementById(fieldid).value.trim();
var divId=document.getElementById(errorMSGdiv);
if(fieldValue=="")
{
divId.innerHTML=MSG;
divId.style.color="rgb(202, 64, 64)";
return false;
}
else
{
divId.innerHTML="";
return true;
}
}

function validateName(fieldid,errorMSGdiv){
var fieldValue=document.getElementById(fieldid).value.trim();
var divId=document.getElementById(errorMSGdiv);
var iChars = "!@#$%^&*()+=-[]\';,./{}|\":<>?0123456789";
for (var i = 0; i < fieldValue.length; i++) {
if (iChars.indexOf(fieldValue.charAt(i)) != -1)
{
var MSG="Only alphabet allowed.";
var len =(fieldValue.length)-1;
fieldValue=(fieldValue).substring(0,len);
divId.innerHTML=MSG;
document.getElementById(fieldid).value="";
divId.style.color="red";
return false;
}
}	
divId.innerHTML="";
return true;   
}

function validateValue(fieldid,errorMSGdiv){
	var fieldValue=document.getElementById(fieldid).value.trim();
	var divId=document.getElementById(errorMSGdiv);	
	if (fieldValue=="NA"||fieldValue=="null"||fieldValue=="na"||fieldValue=="Na"||fieldValue=="nA")
	{
	var MSG="Invalid Input.";
	document.getElementById(fieldid).value="";
	divId.innerHTML=MSG;
	divId.style.color="red";
	return false;
	}else	
	divId.innerHTML="";
	return true;   
	}
  
function toUpper(mystring) 
{
	var sp = mystring.split(' ');
	var wl=0;
	var f ,r;
	var word = new Array();
	for (i = 0 ; i < sp.length ; i ++ ) {
	f = sp[i].substring(0,1).toUpperCase();
	r = sp[i].substring(1);
	word[i] = f+r;
	}
	newstring = word.join(' ');
	document.getElementById('Employee Name').value = newstring;
	return true;
}
function validateMobileno(fieldid,errorMSGdiv) {
var fieldValue=document.getElementById(fieldid).value.trim();
var divId=document.getElementById(errorMSGdiv);
var iChars = "0123456789";
for (var i = 0; i < fieldValue.length; i++) {
if (iChars.indexOf(fieldValue.charAt(i)) == -1) {
var MSG=" Alphabets or special characters not allowed.";
var len = (fieldValue.length) - 1;
fieldValue = (fieldValue).substring(0, len);
divId.innerHTML=MSG;
document.getElementById(fieldid).value="";
divId.style.color="red";
return false;
}else
	divId.innerHTML="";
if (fieldValue.charAt(0) != "9" && fieldValue.charAt(0) != "8" && fieldValue.charAt(0) != "7" && fieldValue.charAt(0) != "6") {
var MSG="Mobile Number Should Be Start with 9,8,7 or 6";
divId.innerHTML=MSG;
document.getElementById(fieldid).value="";
divId.style.color="red";
return false;
}else
	divId.innerHTML="";
if(fieldValue.length > 10 || fieldValue.length < 10 )
{
var MSG="Please Fill 10 Digit Mobile Number";
divId.innerHTML=MSG;
document.getElementById(fieldid).value="";
divId.style.color="red";
return false;
}else
	divId.innerHTML="";
}
}


function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : evt.keyCode
    return !(charCode > 31 && (charCode < 48 || charCode > 57));
}
$(window).load(function() {
	$('#loading').hide();
});

