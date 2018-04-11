
<!DOCTYPE html>
<#import "templates/spring.ftl" as spring/>
<html lang="en">
<html manifest="cache.manifest">
<head>
  <link rel="shortcut icon" type="image/x-icon" href="img/mouseicon.ico" />
  <title>Book Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <#include "/resources/css/style.css">
  <style>
  </style>

</head>
<body>
  <nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class = "navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
      <div class="collapse navbar-collapse" id ="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="/KnyguLaboras/"> Home</a></li>
          <li ><a href="#" class ="scrollto1" type="button"> About</a></li>
          <li ><a href="#" class ="scrollto2"> Info</a></li>
          <li ><a href="#" class ="scrollto3"> Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

<div class="container">
	<h1>Vartotojo Informacija</h1>
	<table class = "table table-striped">
		<tr>
			<td><b>Id:</b></td>
			<td>${book.id}</td>
		</tr>
		<tr>
		<td><b>Name:</b></td>
		<td> ${book.name}</td>
		</tr>
		<tr>
		<td><b>Author:</b></td>
		<td> ${book.author}</td>
		</tr>
		<td><b>Genre:</b></td>
		<td> ${book.genre}</td>
		</tr>
		<tr>
		<td><b>Rarity:</b></td>
		<td> ${book.rarity}</td>
		</tr>
		<tr>
		<td><b>Pages:</b></td>
		<td> ${book.pages}</td>
		</tr>
		<tr>
		<td><b>Cover:</b></td>
		<td> ${book.cover}</td>
		</tr>
		
	</table>
	<br>
	<a href = "/KnyguLaboras/"><button class = "btn bt-default">Atgal</button></a>
</div>


</body>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/main.js"></script>
</html>