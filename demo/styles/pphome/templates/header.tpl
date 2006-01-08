<!-- Header template file -->

<!-- ZOOMSTOP -->

<!-- CSS link tags -->
CSS_LINKTAGS

<!-- link navigation -->
LINK_NAVIGATION

<!-- document info meta tags -->
DOC_METATAGS

<!-- title -->
<title>TITLE</title>

<LINK REL="stylesheet" TYPE="text/css" HREF="basic.css">

FAVICON_LINKTAG

<style type="text/css" media="all">
  @import "ahem.css";
  @import "main.css";
  /* e.g. IE 5.x on the Mac does not understand the following */
  span>div>blockquote { display: none; height: 0; }
  .badcss { display: none; height: 0; }
  .badcss>blockquote { display: none; height: 0; }
</style>

<style type="text/css">
  .bga  { background-color: #aaaaff; text-align: center;}
  .bgb  { background-color: #bbbbff; text-align: center;}
  .bgc  { background-color: #ccccff; text-align: center;}
  .bgd  { background-color: #ddddff; text-align: center;}
  .bge  { background-color: #eeeeff; text-align: center;}
  .bgf  { background-color: #ffff99; text-align: center;}
  .slack { border: 3px double #bbbbbb;}
  .vrule { position: absolute; right: 0px; top: 1px; }
</style>

<!-- key and mouse click navigation (base scheme copied from Spork, the Kwiki presenter) -->
<script type="text/javascript">

function nextSlide()
 { window.location='URL_NEXT';}

function prevSlide()
 {window.location='URL_PREV';}

function indexSlide()
 {window.location = 'URL_INDEX';}

function startSlide()
 {window.location = 'URL_FIRST';}

function closeSlide()
 {window.close();}

function handleKey(e)
 {
  var key;
  if (e == null)
   {
    // IE
    key = event.keyCode
   } 
  else
   {
    // Mozilla
    if (e.altKey || e.ctrlKey)
     {return true}
    key = e.which
   }

  switch(key)
   {
    case 8:   prevSlide(); break
    case 13:  nextSlide(); break
    case 32:  nextSlide(); break
    case 81:  closeSlide(); break
    case 105: indexSlide(); break
    case 110: nextSlide(); break
    case 112: prevSlide(); break
    case 115: startSlide(); break
    default: //xxx(e.which)
   }
 }

// handle keys, but no mouse click - that's confusing in a course
// (e.g. when you want to mark something)
document.onkeypress = handleKey

</script>

<!-- ZOOMRESTART -->


