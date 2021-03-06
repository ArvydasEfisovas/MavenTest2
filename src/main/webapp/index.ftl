<!DOCTYPE html>
<html lang="en">
<html manifest="cache.manifest">
<head>
  <title>Book Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <#include "/resources/css/style.css">  
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
          <li><a href="#"> Home</a></li>
          <li ><a href="#" class ="scrollto1" type="button"> About</a></li>
          <li ><a href="#" class ="scrollto2"> Info</a></li>
          <li ><a href="#" class ="scrollto3"> Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>



<div class="container">
  <table class="table table-bordered">
	<tr>
	<th>id</th>
	<th> Name</th>
	<th> Year</th>
	<th> Author</th>
	<th> Genre</th>
	<th> Rarity</th>
	<th> Pages</th>
	<th> Cover</th>
	<th> Delete</th>
	<th> Update</th>
	</tr>
	<#list books as book>
	<tr>
		<td><a href = "/KnyguLaboras/book/${book.id}">${book.id} </a></td>
		<td> ${book.name}</td>
		<td> ${book.year}</td>
		<td> ${book.author}</td>
		<td> ${book.genre}</td>
		<td> ${book.rarity}</td>
		<td> ${book.pages}</td>
		<td> ${book.cover}</td>
		
		<td> <a href ="/KnyguLaboras/delete/${book.id}"> Trinti</a></td>
		<td> <a href ="/KnyguLaboras/update/${book.id}"> Redaguoti</a></td>
	</tr>
	</#list>
</table>
<p>
<a href="/KnyguLaboras/addBook"><button class = "btn bt-default">Sukurti</button></a> 

</div>
</body>

</html>