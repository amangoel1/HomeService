/*function validation(){
           var fName=document.getElementById('firstName').value;
          var lname=document.getElementById('lastName').value;
           var email=document.getElementById('email').value;
           var contact=document.getElementById('contact').value;
           var pswd=document.getElementById('pwd').value;
           var conpswd=document.getElementById('conpswd').value; 
           var locality=document.getElementById('locality').value;
                       

           if(fName==""){
               document.getElementById('fname').innerHTML="**Please fill the first name field";
               return false;
           }
           if((fName.length <= 2) || (fName.length > 20)) {
               document.getElementById('fname').innerHTML="**First name length must be between 2 and 20";
               return false;
           }
           if(!isNaN(fName)){
               document.getElementById('fname').innerHTML="**First name can't be a number. Please write valid name";
               return false;
           }

           
           
           if(lname==""){
               document.getElementById('lastname').innerHTML="**Please fill the last name field";
               return false;
           }
           if((lname.length <= 2) || (lname.length > 20)) {
               document.getElementById('lastname').innerHTML="**Last name length must be between 2 and 20";
               return false;
           }
           if(!isNaN(lname)){
               document.getElementById('lastname').innerHTML="**Last name can't be a number. Please write valid name";
               return false;
           }


           if(email==""){
               document.getElementById('emailId').innerHTML="**Please fill the email id field";
               return false;
           }

           if(email.indexOf('@')<=0){
               document.getElementById('emailId').innerHTML="**@ Invalid position";
               return false;
           }
           if((email.charAt(email.length-4)!='.') && (email.charAt(email.length-3)!='.')){
               document.getElementById('emailId').innerHTML="** Invalid email id";
               return false;
           }
   

           if(contact==""){
               document.getElementById('contactNo').innerHTML="**Please fill the contact field";
               return false;
           }
           
           if(isNaN(contact)){
               document.getElementById('contactNo').innerHTML="**Mobile number can't be a character, please write a valid mobile number.";
               return false;
           }
           if(contact.length!=10){
               document.getElementById('contactNo').innerHTML="**Invalid mobile number , length can not greater than 10.";
               return false;
           }

   


           if(pswd==""){
               document.getElementById('password').innerHTML="**Please fill the password field";
               return false;
           }
           if((pswd.length <= 6) || (pswd.length > 20)) {
               document.getElementById('password').innerHTML="**Password length must be between 6 and 20";
               return false;
           }
          


           if(conpswd==""){
               document.getElementById('confirmpass').innerHTML="**Please fill the confirm password field";
               return false;
           }
           if(pswd!=conpswd){
               document.getElementById('confirmpass').innerHTML="**Password is not matching with confirm password";
               return false;
           }

           if(locality==""){
            document.getElementById('address').innerHTML="**Please fill the Locality field";
            return false;
           }

          return true;
        
        }
       */
function validateUpdateform(){
	 var contact=document.getElementById('contactNumber').value;
	 	if(isNaN(contact)){
	        document.getElementById('contactNo').innerHTML="**Mobile number can't be a character, please write a valid mobile number.";
	        document.getElementById('contactNumber').style.border="1px solid red";

	        return false;
	    }
	   
	    else if(contact.length!=10){
	        document.getElementById('contactNo').innerHTML="**Invalid mobile number , mobile number must consist of 10 digits."; 
	        document.getElementById('contactNumber').style.border="1px solid red";

	        return false;
	    }
	    else
	    {
	        document.getElementById('contactNo').innerHTML=" ";
	        document.getElementById('contactNumber').style.border="1px solid green";
	    }
	 	alert("validate password");
	 	return true;
}




function validation(){
    var firstname1=document.getElementById('firstName').value;
    var lastname=document.getElementById('lastName').value; 
     var Email=document.getElementById('email').value; 
     var contact=document.getElementById('contactNumber').value;
    var pswd=document.getElementById('pwd').value;
    var conpswd=document.getElementById('conpwd').value;  
                

   /*  if(firstname1==""){
        document.getElementById('fname').innerHTML="**Please fill the first name field";
        
        return false;
    } */
    if((firstname1.length <= 2) || (firstname1.length > 20))
    {
    	 
            document.getElementById('fname').innerHTML="**First name length must be between 2 and 20";
            document.getElementById('firstName').style.border="2px solid red";
            return false;

    }
   
    else if(!isNaN(firstname1)){
        document.getElementById('fname').innerHTML="**First name can't be a number. Please write valid name";
        document.getElementById('firstName').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('fname').innerHTML=" ";
        document.getElementById('firstName').style.border="2px solid green";


    }

    
     /* if(lastname==""){
        document.getElementById('lname').innerHTML="**Please fill the last name field";
        return false;
    } */
    
     if((lastname.length <= 2) || (lastname.length > 20)) {
        document.getElementById('lname').innerHTML="**Last name length must be between 2 and 20";
        document.getElementById('lastName').style.border="2px solid red";

        return false;
    }
   
     else if(!isNaN(lastname)){
        document.getElementById('lname').innerHTML="**Last name can't be a number. Please write valid name";
        document.getElementById('lastName').style.border="2px solid red";

        return false;
    }
    else 
    {
        document.getElementById('lname').innerHTML=" ";
        document.getElementById('lastName').style.border="2px solid green";


    }
 
    /* if(Email==""){
        document.getElementById('emailId').innerHTML="**Please fill the email id field";
        return false;
    } */
    
    if(Email.indexOf('@')<=0){
        document.getElementById('emailId').innerHTML="**@ Invalid position";
        document.getElementById('email').style.border="2px solid red";

        return false;
    }
    
    
    else if((Email.charAt(Email.length-4)!='.') && (Email.charAt(Email.length-3)!='.')){
        document.getElementById('emailId').innerHTML="** Invalid email id";
        document.getElementById('email').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('emailId').innerHTML=" ";
        document.getElementById('email').style.border="2px solid green";


    }


    /* if(contact==""){
        document.getElementById('contactNo').innerHTML="**Please fill the contact field";
        return false;
    } */
    
    
    if(isNaN(contact)){
        document.getElementById('contactNo').innerHTML="**Mobile number can't be a character, please write a valid mobile number.";
        document.getElementById('contactNumber').style.border="2px solid red";

        return false;
    }
   
    else if(contact.length!=10){
        document.getElementById('contactNo').innerHTML="**Invalid mobile number , mobile number must consist of 10 digits."; 
        document.getElementById('contactNumber').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('contactNo').innerHTML=" ";
        document.getElementById('contactNumber').style.border="2px solid green";
    }



   /*  if(pswd==""){
        document.getElementById('password').innerHTML="**Please fill the password field";
        return false;
    }
     */
    if((pswd.length <= 6) || (pswd.length > 20)) {
        document.getElementById('password').innerHTML="**Password length must be between 6 and 20";
        document.getElementById('pwd').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('password').innerHTML=" ";
        document.getElementById('pwd').style.border="2px solid green";


    }


    /* if(conpswd==""){
        document.getElementById('confirmpwd').innerHTML="**Please fill the confirm password field";
        return false;
    }
     */
    
    if(pswd!=conpswd){
        document.getElementById('confirmpwd').innerHTML="**Password is not matching with confirm password";
        document.getElementById('confpwd').style.border="2px solid red";

        return false;
    } 
    
    else
    {
        document.getElementById('confirmpwd').innerHTML=" ";
        document.getElementById('confpwd').style.border="2px solid green";


    }
 
     /**/
    alert("Your details are submitted successfully’.");
   	return true;
 
 } 