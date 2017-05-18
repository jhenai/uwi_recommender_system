/* global localStorage */
/* global sessionStorage */
/* global $ */

var courses = JSON.parse(sessionStorage.getItem('selectedCourses'));

window.addEventListener("load", displayCourses(courses));
function removeCourses(){
    alert('heeeeeeeeeey');
    var div = document.getElementById('selected');
    var courses = div.innerHTML;
    console.log(courses)
}

function addCourse(element)
 {
    
    
    if (element.checked == true)
    {
            var checkbox_val = element.value;
            add(checkbox_val)
            console.log(checkbox_val) 
            }
        
    
 }
 
function add(course)
{       
           var d = document.getElementById(course);
            d.className += " chosen";

            if (sessionStorage.getItem("selectedCourses") === null) {
                sessionStorage.setItem("selectedCourses", JSON.stringify(course.split(' ')));
                var selectedCourses = JSON.parse(sessionStorage.getItem('selectedCourses'));
                console.log(selectedCourses);
            }
            
           else{
            var selectedCourses = JSON.parse(sessionStorage.getItem('selectedCourses'));
            console.log(selectedCourses);
            if (selectedCourses.includes(course) == false){
                // var selectedCourses_array = selectedCourses.split(' ');
                selectedCourses.push(course);
                // var selectedCourses_array = selectedCourses.split(',');
                
                sessionStorage.setItem("selectedCourses", JSON.stringify(selectedCourses));
                console.log(selectedCourses);
                
                
            }
}
    return displayCourses(selectedCourses)
}
 
function displayCourses(courses){
    console.log(Array.isArray(courses))
    if  (Array.isArray(courses)==false){
        courses = courses.split(' ');
        
    }
    
   
    console.log(courses)
    var n = (courses.length);
    console.log(n)
    var kk="";

    for(var i = 0; i <= (n-1); i++){
        // var list = courses[i];
    //   console.log(courses)
        kk += '<br>' + courses[i]+ ' <button type="button" class="xoff" onclick= "deleteCourse('+ i +')" name="'+ courses[i]+ '" aria-label="Close"><span aria-hidden="true" >&times;</span></button>';

    }
    kk += "<br><input type='hidden'  name='course' class='form-control' value="+ courses +" required >"
     document.getElementById("choosen_courses").innerHTML = kk;
    
   
}

function deleteCourse(element){
    
    var courses = JSON.parse(sessionStorage.getItem('selectedCourses'));
   
    
    changeselecticon(String(courses[element]))
    // var d= '"' + courses[element] +'"' ;
    // var de = document.getElementById(d)
    // de.className -= " chosen";
    
    

    // $(d).removeClass("chosen");


    courses.splice(element, 1)
    
    

    // console.log(lst.toString())
    sessionStorage.setItem("selectedCourses", JSON.stringify(courses));
    displayCourses(courses)
}

function changeselecticon(d){
    var de = document.getElementById(d)
    de.className -= " chosen";
    de.className += " course_icon";
    console.log(d)
    // console.log(courses)
}

function deleteC(element){
    var courses = localStorage.getItem('selectedCourses');
    var lst = courses.split(',');
    lst.splice(element, 1)
    // console.log(lst.toString())
    localStorage.setItem("selectedCourses", lst.toString());
    
    // profileDisplay()
    
    courses = sessionStorage.getItem('selectedCourses');
    lst = courses.split(',');
    lst.splice(element, 1)
    // console.log(lst.toString())
    sessionStorage.setItem("selectedCourses", lst.toString());
}

// function profileDisplay() {
//     console.log(localStorage.getItem('selectedCourses')); 
         
//          var k= localStorage.getItem('selectedCourses');
//          var selectedCourses_array = k.split(',');
//          var n = (selectedCourses_array.length);
//          var kk="";
    
//         for(var i = 1; i <= (n-1); i++){
//             kk += "<li class= 'selectedCourses'>" + selectedCourses_array[i] + "<button type='button' class='xoff' onclick= 'deleteC("+ i +")' name='"+ selectedCourses_array[i]+ "' aria-label='Close'><span aria-hidden='true' >&times;</span></button></li>";
            
//         }
         
//          document.getElementById("selectedCourses").innerHTML= kk;
// }
 


function submitCourses(){
    alert('i wanna watch porn instead')
    localStorage.setItem('selectedCourses',(sessionStorage.getItem('selectedCourses')));
    document.getElementById("submitResponse").innerHTML = "<p id='goodSubmit'> Courses are submitted and can be viewed on profile page </p>";
}

function emptySession(){
    
     sessionStorage.removeItem('selectedCourses');
     sessionStorage.clear();
     
}

