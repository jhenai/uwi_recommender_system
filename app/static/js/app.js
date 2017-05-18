/* Add your Application JavaScript */
/* global $ */
/* global angular */


window.onload = function(){

        alert('hi');
   
    // Get the modal
 
      

        
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
           
    //   var courses = sessionStorage.getItem('selectedCourses');
    //   document.getElementById("selectedCourses").innerHTML = courses;
    //   console.log(courses)
        };
        function demo(){
    console.log('hey');
}
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
        
};

/* global $ */

$(document).ready(function(){
    $('ul#recnav li a').click(function(){
        var page = $(this).attr('href');
        //alert(page);
        $('div#reccontent').load(page);
        return false;
     
    });
   
});

  
  $(document).ready(function() {
$("#menu>li>a").click(function (e) {
    $("#menu>li>a").removeClass("activetab");
    //e.preventDefault();
    // $(".tab").addClass("active"); // instead of this do the below 
    $(this).addClass("activetab");   
    
});
});;
   

var searchModal = document.getElementById('searchModal');
        
        // Get the button that opens the modal
        var search = document.getElementById("search");
        
        var cbtns =document.getElementById("sclose");
         
        // Get the <span> element that closes the modal
        var spans = document.getElementsByClassName("searchclose")[0];
         
        // When the user clicks on the button, open the modal 
        search.onclick = function() {
            searchModal.style.display = "block";
        };
        
        // When the user clicks on <span> (x), close the modal
        spans.onclick = function() {
            searchModal.style.display = "none";
        };
        //when a user clicks the close button, close modal
        cbtns.onclick = function() {
            searchModal.style.display = "none";
        };
        
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == searchModal) {
                searchModal.style.display = "none";
            }
        };
        



