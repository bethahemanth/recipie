/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function user() {
            var name = document.getElementById("a").value;
            var error1 = document.getElementById("error1");
            let flag=0;
            error1.innerHTML="First character should be captial";
            if(name.length===0)
                error1.innerHTML="";
            else if(name[0]>='A' && name[0]<='Z')
            {
                for(i=0;i<name.length;i++)
                {
                    if(name[i]>='0' && name[i]<='9')
                    {
                        error1.innerHTML="";
                        flag=1;
                    }
                    else if(flag===1)
                    {
                        error1.innerHTML="";
                    }
                    else
                    error1.innerHTML="Username should contain atleast one digit";
                }
            }
            else
                error1.innerHTML = "First character should be captial";}

        function pass()
        {
            var name2 = document.getElementById("b").value;
            var error2 = document.getElementById("error2");
            let i=0,f1=0,f2=0,f3=0;
            var specialCharacters = "!@#$%^&*()_+{}[]:;<>,.?~\\/-=";          
              if(name2.length===0)
                error2.innerHTML="";
            else
            {
                for(i=0;i<name2.length;i++)
                {
                    if((name2[i]>='A' && name2[i]<='Z'))
                    {
                        f1=1;
                    }
                    else if((name2[i]>='a' && name2[i]<='z') )
                    {
                        f2=1;
                    }
                    else if (specialCharacters.indexOf(name2[i]) !== -1) 
                        f3=1;
                    else
                        error2.innerHTML="";

                    if(f1===1 && f2===1 && f3===1)
                        error2.innerHTML="";
                    else if(f1===1 &&f3===1)
                        error2.innerHTML="should contain  1 lower case";
                    else if(f2===1 &&f3===1)
                        error2.innerHTML="should contain 1 uppercase letter";
                    else if(f1===1 && f2===1)
                        error2.innerHTML="should contain 1 special characters";
                    else if(f1===1)
                        error2.innerHTML="should contain 1 lower and 1 special";
                    else if(f2===1)
                        error2.innerHTML="should contain 1 upper and 1 special";
                    else if(f3===1)
                        error2.innerHTML="should contain 1 lower and 1 upper";
                    else
                        error2.innerHTML="should contain 1 uppercase letter and 1 lower case and 1 special ";  
                }
            }
        }

        function mail()
        {
            var name2 = document.getElementById("c").value;
            var error3 = document.getElementById("error3");   
            if(name2==="")
            error3.innerHTML="";
            else
            {
                var pattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$/;
                if(pattern.test(name2))
                error3.innerHTML="";
                else
                error3.innerHTML="enter correct mail";
            }
        }
    

        
        document.getElementById("logo").addEventListener("click", function() {
            window.location.href = "index.html"; // Replace with the desired URL
        });
        document.getElementById("home").addEventListener("click", function() {
            window.location.href = "index.html"; // Replace with the desired URL
        });