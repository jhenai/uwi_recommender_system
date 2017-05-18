/* global $ */
window.onload = function(){

     
         $('#setting').click(function()
        {
            $('#settingsinfo').show();
            $('#selectedsectionn').hide();
             $('.recommended').hide();

        });

        
        $('#close').click(function()
        {
            $('#settingsinfo').hide();
             $('#selectedsectionn').show();
             $('.recommended').show();

        });
        
        $('#top').click(function()
        {
            $('#top').hide();
             $('#bottom').show();
             $('.course_container').hide();

        });
        $('#bottom').click(function()
        {
            $('#bottom').hide();
             $('#top').show();
             $('.course_container').show();

        });
        
        
        
};

        
 $('#showinterests').click(function()
        {
            $('#studentinterest').show();
        $('#Remove').show();    
             $('#showinterests').hide();
        
        });
         $('#closeinterests').click(function()
        {
            $('#studentinterest').hide();
             $('#showinterests').show();
             $('#Remove').hide(); 
        
        });


         $('#Edit').click(function()
        {
            $('#savebut').show();
             $('#Edit').hide();
        });
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
        
  
         
        
        