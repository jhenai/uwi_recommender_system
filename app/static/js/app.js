/* Add your Application JavaScript */
window.onload = function(){
        // Get the modal
        var modal = document.getElementById('myModal');
        
        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");
        
        var cbtn =document.getElementById("bclose");
        
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];
        
        // When the user clicks on the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "block";
        };
        
        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        };
        //when a user clicks the close button, close modal
        cbtn.onclick = function() {
            modal.style.display = "none";
        };
        
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        };
        
            // Get the modal
        var modal1 = document.getElementById('myModal1');
        
        // Get the button that opens the modal
        var btn1 = document.getElementById("myBtn1");
        
        var cbtn1 =document.getElementById("bclose1");
        
        // Get the <span> element that closes the modal
        var span1 = document.getElementsByClassName("close1")[0];
        
        // When the user clicks on the button, open the modal 
        btn1.onclick = function() {
            modal1.style.display = "block";
        };
        
        // When the user clicks on <span> (x), close the modal
        span1.onclick = function() {
            modal1.style.display = "none";
        };
        //when a user clicks the close button, close modal
        cbtn1.onclick = function() {
            modal1.style.display = "none";
        };
        
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal1) {
                modal1.style.display = "none";
            }
        };
          // Get the modal
        var modal2 = document.getElementById('myModal2');
        
        // Get the button that opens the modal
        var btn2 = document.getElementById("myBtn2");
        
        var cbtn2 =document.getElementById("bclose2");
        
        // Get the <span> element that closes the modal
        var span2 = document.getElementsByClassName("close2")[0];
        
        // When the user clicks on the button, open the modal 
        btn2.onclick = function() {
            modal2.style.display = "block";
        };
        
        // When the user clicks on <span> (x), close the modal
        span2.onclick = function() {
            modal2.style.display = "none";
        };
        //when a user clicks the close button, close modal
        cbtn2.onclick = function() {
            modal2.style.display = "none";
        };
        
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal2) {
                modal2.style.display = "none";
            }
        };
        // Get the modal
        var modal3 = document.getElementById('myModal3');
        
        // Get the button that opens the modal
        var btn3 = document.getElementById('myBtn3');
        
        var cbtn3 =document.getElementById("bclose3");
         
        // Get the <span> element that closes the modal
        var span3 = document.getElementsByClassName("close3")[0];
        
        // When the user clicks on the button, open the modal 
        btn3.onclick = function() {
            modal3.style.display = "block";
        };
        
        // When the user clicks on <span> (x), close the modal
        span3.onclick = function() {
            modal3.style.display = "none";
        };
        //when a user clicks the close button, close modal
        cbtn3.onclick = function() {
            modal3.style.display = "none";
        };
        
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal3) {
                modal3.style.display = "none";
            }
        };
        
        // code to display student interests
        // Get the Sub Interests button
        var subinterests = document.getElementById("subinterests");
        console.log(subinterests);
        // now let us check for a click event
        subinterests.onclick = function (event) {
            // prevent the default action of the submit button
            event.preventDefault();
        
            // then do what I want to do instead. e.g. print a message to the console
            // or print something on the page.
            console.log('hello I prevented the default action of the form and am displaying this message instead');
              
            var checks =document.getElementById('checkbox_id');
            if (checks.checked==true){
                var val=[];
                val.push(checks);
            }
           console.log(val);
        };
};
/* global $ */
$(document).ready(function(){
    //handle sidebar clicks
    $('ul#recnav li a').click(function(){
        var page = $(this).attr('href');
        //alert(page);
        $('#reccontent').load(page);
        return false;
    });
});