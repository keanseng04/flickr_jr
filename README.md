<div class="container">
<div id="challenge" class="row">
<div class="col-sm-8">
<div class="row">
<div class="col-sm-12">
<div class="tab-content">
<div id="body" class="tab-pane fade in active">

We're going to create a simple version of Flickr. There will be three core domain models: users, albums, and photos.

The goal is to become familiar with handling file uploads and also work on more advanced AJAX / jQuery techniques.
<h2>Objectives</h2>
<h3>Wireframes</h3>
This application is complicated enough to wireframe. A user should be able to view photos and albums without logging in, but needs to sign up or log in in order to upload a photo.

Every photo should belong to an album. It probably makes sense to automatically create a "default album" for every user as soon as they sign up.

We should be able to see all albums for a particular user at a URL like
<div class="highlight">
<pre>/users/:user_id/albums
</pre>
</div>
and every photo in an album at a URL like
<div class="highlight">
<pre>/albums/:album_id
</pre>
</div>
and a particular photo at a URL like
<div class="highlight">
<pre>/albums/:album_id/:photo_id
</pre>
</div>
Feel free to change the URL scheme, just don't make it too complicated.
<h3>Handling Uploads</h3>
For image uploading with Sinatra, we recommend using the following gems:
<ul>
	<li><a href="https://github.com/jnicklas/carrierwave">CarrierWave</a></li>
	<li><a href="https://github.com/minimagick/minimagick">MiniMagick</a></li>
</ul>
Here's the documentation for <a href="https://github.com/jnicklas/carrierwave#using-minimagick">using CarrierWave with MiniMagick</a>.

To upload a file using an HTML form you need to use the <code>file</code> input type and set <code>enctype</code> in the <code>form</code> tag, like so:
<div class="highlight">
<pre>&lt;form <span class="nv">action</span><span class="o">=</span><span class="s2">"/whatever"</span> <span class="nv">enctype</span><span class="o">=</span><span class="s2">"multipart/form-data"</span>&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"file"</span> <span class="nv">name</span><span class="o">=</span><span class="s2">"filename"</span>&gt;
&lt;/form&gt;
</pre>
</div>
Read this little blog post on <a href="http://www.wooptoot.com/file-upload-with-sinatra">uploading file with Sinatra</a>. Note that it uses <a href="http://haml.info/">HAML</a> instead of the default ERB, but it's easy enough to see how the HAML translates into HTML.

Sometimes when working with gems, it's necessary to configure them to work correctly in your environment. Since the author of CarrierWave doesn't know anything about our "Sinatra skeleton", you'll probably need to add some configuration to your <code>environment.rb</code> file to tell CarrierWave in which folder(s) you'd like things to land when they are uploaded. For example:
<div class="highlight">
<pre>CarrierWave.configure <span class="k">do</span> |config|
  <span class="c"># your configuration code goes here</span>
end
</pre>
</div>
<em>Hint</em>: Check out the <code>root</code> and <code>store_dir</code> configuration variables.

<em>Pro-tip</em>: You might want to use your Sinatra Sandbox to play with file uploads first, so you understand this one moving part. Build a toy app before you build a fully-featured app. No albums, no users, just a <code>photos</code> table and <code>Photo</code>model, a form to upload a photo, and a page showing all the photos.
<h3>Models, Routes, &amp;</h3>
You'll want the following models, at least: <code>Photo</code>, <code>User</code>, and <code>Album</code>. Get everything working without using any AJAX. This will take a while.

HOLD OFF ON THE WIZARDY. THIS IS A WIZARDRY-FREE ZONE.
<h3>WIZARD TIME</h3>
Ok, now time for wizardy.

Using the image carousel you wrote earlier today, create a "slideshow mode" for the album show page.

What other magic spells can you think up? AJAX file upload is tricky, so avoid that for now.

What about using <a href="http://jqueryui.com/sortable/#display-grid">jQuery sortable</a> to let users rearrange their albums?

</div>
</div>
</div>
</div>
</div>
</div>
</div>
&nbsp;
