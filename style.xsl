<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" version="4.01" encoding="UTF-8"/>

	<xsl:template match="/">
		<html>
		  <head>
		    <meta charset='utf-8'/>
		    <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
		    <meta name="viewport" content="width=640" />

		    <link rel="stylesheet" href="stylesheets/core.css" media="screen"/>
		    <link rel="stylesheet" href="stylesheets/mobile.css" media="handheld, only screen and (max-device-width:640px)"/>
		    <link rel="stylesheet" href="stylesheets/pygment_trac.css"/>

		    <script type="text/javascript" src="javascripts/modernizr.js"></script>
		    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		    <script type="text/javascript" src="javascripts/headsmart.min.js"></script>
		    <script type="text/javascript">
		      $(document).ready(function () {
			$('#main_content').headsmart()
		      })
		    </script>
		    <title>The Great Nation of Brenkrike</title>
		  </head>

		  <body>
		    <div class="shell">

		      <header>
			<span class="ribbon-outer">
			  <span class="ribbon-inner">
			    <h1>Brenkrike</h1>
			    <h2>The Great Nation of Brenkrike's official home page</h2>
			  </span>
			  <span class="left-tail"></span>
			  <span class="right-tail"></span>
			</span>
		      </header>
		      <section id="downloads">
			<span class="inner">
			  <!-- <a href="https://github.com/cjbrowne/Brenkrike/zipball/master" class="zip"><em>download</em> .ZIP</a><a href="https://github.com/cjbrowne/Brenkrike/tarball/master" class="tgz"><em>download</em> .TGZ</a> -->
			</span>
		      </section>

		      <span class="banner-fix"></span>

			<ul class="navigation">
				<li class="header">Navigation Links</li>
				<li><a href="index.xml">Home</a></li>
				<li><a href="royals.xml">The Royal Family</a></li>
				<li><a href="citizenship.xml">Citizenship</a></li>
				<li><a href="history.xml">History</a></li>
				<li><a href="culture.xml">Culture</a></li>
			</ul>
		      <section id="main_content">
				<h1>
				<xsl:value-of select="//title"/>
				</h1>
				<xsl:for-each select="//paragraph">
					<h2><xsl:value-of select="heading"/></h2>
					<p><xsl:copy-of select="*[not(self::heading)]"/></p>
				</xsl:for-each>
		      </section>

		      <footer>
			<span class="ribbon-outer">
			  <span class="ribbon-inner">
			    <p>Important documents relating to the nation can be found on <a href="https://github.com/cjbrowne/Brenkrike">GitHub</a></p>
			  </span>
			  <span class="left-tail"></span>
			  <span class="right-tail"></span>
			</span>
			<p>Generated with <a href="http://pages.github.com">GitHub Pages</a> using Merlot</p>
			<span class="octocat"></span>
		      </footer>

		    </div>

		    
		  </body>
		</html>
	</xsl:template>

</xsl:stylesheet>
