<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Budget.aspx.cs" Inherits="WebApplication5.Forms.Budget" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Your Budget Selection</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 800px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-image: url(%D7%AA%D7%9E%D7%95%D7%A0%D7%94%20%D7%A8%D7%90%D7%A9%D7%99%D7%AA.png);
      height: 110%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
    <style>
* {
  box-sizing: border-box;
}

#regForm {
  background-color: #ffffff;
  opacity: 90%;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
    /*-------------------------------------------------------------------------------*/
    .bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-style: oblique;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position:;
  top: 50%;
  left: 50%;
  transform: translate(30%,10%);
  z-index: 2;
  width: 60%;
  padding: 20px;
  text-align: center;
}
    /*-------------------------------------------------------------------------------*/
    .select-css {
    display: block;
    font-size: 16px;
    font-family: sans-serif;
    font-weight: 700;
    color: #444;
    line-height: 1.3;
    padding: .6em 1.4em .5em .8em;
    width: 100%;
    max-width: 100%; 
    box-sizing: border-box;
    margin: 0;
    border: 1px solid #aaa;
    box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
    border-radius: .5em;
    -moz-appearance: none;
    -webkit-appearance: none;
    appearance: none;
    background-color: #fff;
    background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E'),
      linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);
    background-repeat: no-repeat, repeat;
    background-position: right .7em top 50%, 0 0;
    background-size: .65em auto, 100%;
}
.select-css::-ms-expand {
    display: none;
}
.select-css:hover {
    border-color: #888;
}
.select-css:focus {
    border-color: #aaa;
    box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);
    box-shadow: 0 0 0 3px -moz-mac-focusring;
    color: #222; 
    outline: none;
}
.select-css option {
    font-weight:normal;
}



    /*-------------------------------------------------------------------------------*/
    @import url('https://fonts.googleapis.com/css?family=Open+Sans:600');
.showOverlay {
  bottom: 0;
  display: flex;
  font-size: 16px;
  left: calc(50% - 55px);
  margin-bottom: 7px;
  position: absolute;
}
.check {
  bottom: 0;
  display: flex;
  left: calc(50% + 40px);
  margin-bottom: 10px;
  position: absolute;
}
.containerOuter {
  background: white;
  border-radius: 8px;
  box-shadow: 2px 6px 20px 2px rgba(10,10,120,0.15);
}
.container {
  position: relative;
  margin: 20px;
  overflow: hidden;
  width: 160px;
}
.hidden {
  display: none;
}
.entry {
  height: 25px;
  position: absolute;
  width: 160px;
}
.entry:nth-child(2) {
  left: 8px;
  top: 8px;
}
.entry:nth-child(4) {
  left: 8px;
  top: 58px;
}
.entry:nth-child(6) {
  left: 8px;
  top: 108px;
}
.circle {
  border: 2px solid #545556;
  border-radius: 50%;
  cursor: pointer;
  height: 20px;
  position: absolute;
  transition: border-color 300ms;
  width: 20px;
}
.entry-label {
  cursor: pointer;
  margin-top: -3px;
  padding-left: 40px;
  user-select: none;
  -moz-user-select: none;
}
.overlay {
  background: #fff;
  mask: url(#holes);
  -webkit-mask-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAACMCAYAAAAOc+uVAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAOxAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAItSURBVHic7ZnNjhJBFIVPA0txr0Iyw+tIdOXWaDRufZWZeYbZuMKOUV9Gg+HHGN/BHBcNcSBT1KVOEVycb0mq635UVd9U5zQkif+Y3rkFclhQxYIqFlQZiM8vALQAPgP4AWC1+X0E4ALAFMBzAOPiCixjRfIdyX5g/h7JFyTnJYVKBGckHxQsxJBke2rBK5LF55bdal6fSnCmyO1JhlcyKrhkwbYekBySXNcUfF1L7o7k20jhhsxetxYAJk3T/Kks2EfXmkaHxkXO1MfacgCwmbPNjYsIftV1knzJDYgIfqsgkuJ7bkBE8FcFkRTr3IBzXxay9SOCjyuIFM8dEZxUECmeOyL4tIJIimluQKRRLwFcnqBRDwDMUaFRjwG8quC0zxtk5ACEL6wrksNaZiQfkvwZKRxtM08AfGDgBh2Q6wG4BfAo+sAxXB/xp+6VI3lzTMGSK3/Lgu1mt62fji1W+tH0m+R7dm9iZNVeMnjm9om0mUOs8O+zc47dz84Juh76DJG3NYEqeHLOfVnIYkEVC6pYUMWCKhZUsaCKBVUsqGJBFQuqWFDFgipO3OnEfRcn7qWCTtxTOHFP4cS9Ek7cVZy4qzhxL4ZO3AXoxF2QoxP3DifuW5y4q1hQxYIqFlSxoIoFVSyoYkEVC6pYUMWCKhZUsaCKE3c6cd/FiXupoBP3FE7cUzhxr4QTdxUn7ipO3IuhE3cBOnEX5OjEvcOJ+xYn7ioWVLGgigVV/gKEL4RSyM8Z8wAAAABJRU5ErkJggg==);
  height: 140px;
  pointer-events: none;
  transition: background 300ms;
  width: 40px;
}
.highlight {
  background: #4D98EF;
  border-radius: 50%;
  height: 12px;
  left: 14px;
  pointer-events: none;
  position: absolute;
  top: 14px;
  transition: transform 400ms cubic-bezier(0.175, 0.885, 0.32, 1.2);
  transform: translateY(-50px);
  width: 12px;
}
.hidden:nth-child(1):checked ~ .highlight {
  transform: translateY(0);
}
.hidden:nth-child(3):checked ~ .highlight {
  transform: translateY(50px);
}
.hidden:nth-child(5):checked ~ .highlight {
  transform: translateY(100px);
}
.hidden:nth-child(1):checked + .entry .circle {
  border-color: #4D98EF;
}
.hidden:nth-child(3):checked + .entry .circle {
  border-color: #4D98EF;
}
.hidden:nth-child(5):checked + .entry .circle {
  border-color: #4D98EF;
}
.check:checked ~ .containerOuter .overlay {
  background: #ecf0f4;
}
        img {
    height: 200px;
    width: 200px;
    margin: 10px;
}
brn-group {
    overflow-y: scroll;
}
[type='radio'] {
display: none; 
}

        /*-------------------------------------------------------------------------------*/
</style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
        <br>
        <br>
      <h4>What's you need to do?
          
        </h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="UsageType.aspx">SELECT USAGE TYPE</a></li>
        <li class="active"><a href="Budget.aspx">SET BUDGET</a></li>
        <li><a href="StartEnjoy.aspx">START  ENJOY</a></li>
      </ul><br>
    </div>
    <div class="col-sm-9">
      <form id="BudgetForm" runat="server">
  <h1>What is your budget?</h1>  <div class="btn-group btn-group-toggle" data-toggle="buttons">
<ul>
  <li class="btn btn-light active">
    <asp:RadioButton ID="bOption1" runat="server" Checked=true />
    <img src="https://image.shutterstock.com/image-illustration/200-two-hundred-price-symbol-260nw-1279271545.jpg" width="24" height="24" class="-avatar js-avatar-me">
  </li>
  <li class="btn btn-light">
    <asp:RadioButton ID="bOption2" runat="server" Checked=true />
      <img src="https://image.shutterstock.com/image-illustration/300-three-hundred-price-symbol-260nw-1282751596.jpg" alt="" width="24" height="24" class="-avatar js-avatar-me">
  </li>
  <li class="btn btn-light">
    <asp:RadioButton ID="bOption3" runat="server" Checked=true />
      <img src="https://image.shutterstock.com/image-illustration/400-four-hundred-price-symbol-260nw-1285133077.jpg" alt="" width="24" height="24" class="-avatar js-avatar-me">
  </li>
  <br />
  <li class="btn btn-light">
    <asp:RadioButton ID="bOption4" runat="server" Checked=true />
      <img src="https://thumbs.dreamstime.com/b/five-hundred-price-symbol-red-text-number-d-render-dollar-sign-white-background-153049191.jpg" alt="" width="24" height="24" class="-avatar js-avatar-me">
  </li>
  <li class="btn btn-light">
    <asp:RadioButton ID="bOption5" runat="server" Checked=true />
      <img src="https://thumbs.dreamstime.com/b/six-hundred-price-symbol-red-text-number-d-render-dollar-sign-white-background-153048888.jpg alt=" width="24" height="24" class="-avatar js-avatar-me">
  </li>
  <li class="btn btn-light">
    <asp:RadioButton ID="bOption6" runat="server" Checked=true />
      <img src="https://image.shutterstock.com/image-illustration/700-seven-hundred-price-symbol-260nw-1376218787.jpg" alt="" width="24" height="24" class="-avatar js-avatar-me">
  </li> 
  <br />
     <li class="btn btn-light">
    <asp:RadioButton ID="bOption7" runat="server" Checked=true />
      <img src="https://i.pinimg.com/originals/7c/cb/01/7ccb010d8fddc4bcd84587ef3c34d100.jpg" alt="" width="24" height="24" class="-avatar js-avatar-me">
  </li> 
    <li class="btn btn-light">
    <asp:RadioButton ID="bOption8" runat="server" Checked=true />
      <img src="https://www.deluxe-distribution.de/wp-content/uploads/2016/01/premium-logo1.gif" alt="" width="24" height="24" class="-avatar js-avatar-me">
  </li> 
  </ul>
</div>
      <asp:Button ID="Button1" runat="server" Height="47px" Text="Next" 
          Width="153" OnClientClick="Button1_Click" onclick="Button1_Click"/>
 </form>
<script>
    var currentTab = 0; // Current tab is set to be the first tab (0)
    showTab(currentTab); // Display the current tab

    function showTab(n) {
        // This function will display the specified tab of the form...
        var x = document.getElementsByClassName("tab");
        x[n].style.display = "block";
        //... and fix the Previous/Next buttons:
        if (n == 0) {
            document.getElementById("prevBtn").style.display = "none";
        } else {
            document.getElementById("prevBtn").style.display = "inline";
        }
        if (n == (x.length - 1)) {
            document.getElementById("nextBtn").innerHTML = "Submit";
        } else {
            document.getElementById("nextBtn").innerHTML = "Next";
        }
        //... and run a function that will display the correct step indicator:
        fixStepIndicator(n)
    }

    function nextPrev(n) {
        // This function will figure out which tab to display
        var x = document.getElementsByClassName("tab");
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) return false;
        // Hide the current tab:
        x[currentTab].style.display = "none";
        // Increase or decrease the current tab by 1:
        currentTab = currentTab + n;
        // if you have reached the end of the form...
        if (currentTab >= x.length) {
            // ... the form gets submitted:
            document.getElementById("regForm").submit();
            return false;
        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
    }

    function validateForm() {
        // This function deals with validation of the form fields
        var x, y, i, valid = true;
        x = document.getElementsByClassName("tab");
        y = x[currentTab].getElementsByTagName("input");
        // A loop that checks every input field in the current tab:
        for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "") {
                // add an "invalid" class to the field:
                y[i].className += " invalid";
                // and set the current valid status to false
                valid = false;
            }
        }
        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
    }

    function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        var i, x = document.getElementsByClassName("step");
        for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
        }
        //... and adds the "active" class on the current step:
        x[n].className += " active";
    }
</script>

      
     
              <br>
            </div>
          </div>
        </div>


<footer class="container-fluid">
    <h3>Links</h3>
  <p><a href="../FrontEnd pages/MainPage.html">Main</a></p>
 <p><a href="../FrontEnd pages/Register.html">Register</a></p>
 <p><a href="../FrontEnd pages/NewsPage.html">News</a></p>
</footer>

</body>
</html>



