<#setting number_format="computer">
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
  	<form name = "book" action= "/KnyguLaboras/updateBook" method ="post">
  	<label  for="ID">ID:</label><p>
	<input placeholder = "ID"  type ="number" name = "id" value = "${book.id}" readonly = "true"><p>
	<label  for="Name">Name:</label><p>
	<input placeholder = "Name" type = "text" name = "name" value = "${book.name}"><p>
	<label  for="Year">Year:</label><p>
	<input placeholder = "Year" type = "text" name = "Year" value = "${book.year}"><p>
	<label  for="Author">Author:</label><p>
	<input placeholder = "Author" type = "text" name = "Author" value = "${book.author}"><p>
	<label  for="Genre">Genre:</label><p>
	
	  <#if book.genre == "Documentary">
    <input type = "radio" name="genre" value = "Documentary" checked="true"/> Documentary
		<input type = "radio" name="genre" value = "Romance"/> Romance
		<input type = "radio" name="genre" value = "Adventure"/> Adventure
	
	<#elseif book.genre == "Romance">
	<input type = "radio" name="genre" value = "Documentary" /> Documentary
		<input type = "radio" name="genre" value = "Romance" checked="true"/> Romance
		<input type = "radio" name="genre" value = "Adventure"/> Adventure
		
	<#elseif book.genre == "Adventure">
	<input type = "radio" name="genre" value = "Documentary"/> Documentary
		<input type = "radio" name="genre" value = "Romance"/> Romance
		<input type = "radio" name="genre" value = "Adventure" checked="true"/> Adventure
	</#if>
	<p>
	<label  for="Pages">Pages:</label><p>
	<input placeholder = "Pages" type = "number" name = "Pages" value = "${book.pages}"><p>
	<label  for="Cover">Cover:</label><p>
      <#if book.cover == "Hard">     
    <input type = "radio" name="cover" value = "Hard" checked /> Hard
	<input type = "radio" name="cover" value = "Soft"/> Soft <p>
	
	<#elseif book.cover == "Soft">
	<input type = "radio" name="cover" value = "Hard"  /> Hard 
	<input type = "radio" name="cover" value = "Soft" checked/> Soft <p>
	
	</#if>
    
     <label  for="Rarity">Rarity:</label><p>
    <#if book.rarity == "Rare">
    <input type = "radio" name="rarity" value = "Rare" checked /> Rare
	<input type = "radio" name="rarity" value = "Uncommon"/> Uncommon
	<input type = "radio" name="rarity" value = "Common"/> Common
	
	<#elseif book.rarity == "Uncommon">
	<input type = "radio" name="rarity" value = "Rare"  /> Rare
	<input type = "radio" name="rarity" value = "Uncommon" checked/> Uncommon
	<input type = "radio" name="rarity" value = "Common"/> Common
	
	<#elseif book.rarity == "Common">
	<input type = "radio" name="rarity" value = "Rare"  /> Rare
	<input type = "radio" name="rarity" value = "Uncommon" /> Uncommon
	<input type = "radio" name="rarity" value = "Common" checked/> Common
	</#if>
	<p>
	<input type = "submit" class = "btn bt-default" value = "Redaguoti">
	</form>
</div>

</body>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/main.js"></script>
</html>