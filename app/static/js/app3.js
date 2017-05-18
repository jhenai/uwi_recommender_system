/* global $ */
window.onload = function(){


    
    // alert('nr');
    $(window).scroll(function() {
  $(".slideanim").each(function(){
    var pos = $(this).offset().top;

    var winTop = $(window).scrollTop();
    if (pos < winTop + 600) {
      $(this).addClass("slide");
    }
  });
});

document.getElementById("majintro").addEventListener("mouseover", function(){
     document.getElementById("iconResults").innerHTML = 'something about major recommendation';
});

document.getElementById("founintro").addEventListener("mouseover", function(){
    document.getElementById("iconResults").innerHTML = 'something about founintr recommendation';
});

document.getElementById("interestintro").addEventListener("mouseover", function(){
    document.getElementById("iconResults").innerHTML = 'something about interest recommendation';
});

document.getElementById("ratingsintro").addEventListener("mouseover", function(){
    document.getElementById("iconResults").innerHTML = 'something about rating recommendation';
});

document.getElementById("searchintro").addEventListener("mouseover", function(){
    document.getElementById("iconResults").innerHTML = 'To search for all the courses offered under a course code, write the four letter course code tite and then %. ';
});

document.getElementById("gradesintro").addEventListener("mouseover", function(){
    document.getElementById("iconResults").innerHTML = 'something about grades recommendation';
});

document.getElementById("Edit").addEventListener("click", removeCourses);


}



function removeCourses(){
   
    var div = document.getElementById('courses_array');
    var courses = div.innerHTML;
    document.getElementById("submitselected").style.visibility = "visible" ;
    courses = courses.split(',');
    console.log(courses);
    // var n = (courses.length);
    // console.log(n)
    var kk="";
    for(var i = 0; i <= (courses.length-2); i++){
        console.log(courses[i].length)
        kk += courses[i]+ ' <button type="button" class="xoff" onclick= "deleteSelectCourse('+ i +')" name="'+ courses[i]+ '" aria-label="Close"><span aria-hidden="true" >&times;</span></button><br>';
            }
        // kk += ' <br> <button style="float:right;margin-right:20px" class="btn btn-danger btn-block, mybut" type="submit">Submit</button>'
 document.getElementById("selected").innerHTML = kk;
   
}

function deleteSelectCourse(ele){
    // alert('deleted')
    var div = document.getElementById('courses_array');
    var courses = div.innerHTML;
    
    courses = courses.split(',');
    console.log(courses)
    courses.splice(ele, 1);
    var kk=''
    for(var i = 0; i <= (courses.length-2); i++){
        console.log(courses[i].length)
        kk += courses[i]+ ' <button type="button" class="xoff" onclick= "deleteSelectCourse('+ i +')" name="'+ courses[i]+ '" aria-label="Close"><span aria-hidden="true" >&times;</span></button><br>';
            }
        // kk += ' <br> <button style="float:right;margin-right:20px" class="btn btn-danger btn-block, mybut" type="submit">Submit</button>'
 document.getElementById("selected").innerHTML = kk;
 document.getElementById("courses_array").innerHTML = courses;
    
    
}

function submitselected(){
    var div = document.getElementById('courses_array');
    var courses = div.innerHTML;
    
    courses = courses.split(',');
    
     var kk=''
    for(var i = 0; i <= (courses.length-2); i++){
        console.log(courses[i].length)
        kk += courses[i]+ '<br>';
            }
        // kk += ' <br> <button style="float:right;margin-right:20px" class="btn btn-danger btn-block, mybut" type="submit">Submit</button>'
    document.getElementById("selected").innerHTML = kk;
    
}



