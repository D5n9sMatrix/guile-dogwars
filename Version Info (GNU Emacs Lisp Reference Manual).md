<!DOCTYPE html>
<!-- saved from url=(0075)https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Version Info (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Version Info (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Version Info (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="section-level-extent" id="Version-Info">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Acknowledgments.html" accesskey="n" rel="next">Acknowledgments</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Conventions.html" accesskey="p" rel="prev">Conventions</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Introduction.html" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h3 class="section" id="Version-Information">1.4 Version Information</h3>

<p>These facilities provide information about which version of Emacs is
in use.
</p>
<dl class="first-deffn">
<dt class="deffn" id="index-emacs_002dversion"><span class="category-def">Command: </span><span><strong class="def-name">emacs-version</strong> <var class="def-var-arguments">&amp;optional here</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002dversion"> ¶</a></span></dt>
<dd><p>This function returns a string describing the version of Emacs that is
running.  It is useful to include this string in bug reports.
</p>
<div class="example smallexample">
<div class="group"><pre class="example-preformatted">(emacs-version)
  ⇒ "GNU Emacs 26.1 (build 1, x86_64-unknown-linux-gnu,
             GTK+ Version 3.16) of 2017-06-01"
</pre></div></div>

<p>If <var class="var">here</var> is non-<code class="code">nil</code>, it inserts the text in the buffer
before point, and returns <code class="code">nil</code>.  When this function is called
interactively, it prints the same information in the echo area, but
giving a prefix argument makes <var class="var">here</var> non-<code class="code">nil</code>.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-emacs_002dbuild_002dtime"><span class="category-def">Variable: </span><span><strong class="def-name">emacs-build-time</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002dbuild_002dtime"> ¶</a></span></dt>
<dd><p>The value of this variable indicates the time at which Emacs was
built.  It uses the style of
<code class="code">current-time</code> (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-of-Day.html">Time of Day</a>), or is <code class="code">nil</code>
if the information is not available.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">emacs-build-time
     ⇒ (25194 55894 8547 617000)
</pre></div></div>
<p>(This timestamp is <code class="code">(1651169878008547617 . 1000000000)</code>
if <code class="code">current-time-list</code> was <code class="code">nil</code> when Emacs was built.)
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-emacs_002dversion-1"><span class="category-def">Variable: </span><span><strong class="def-name">emacs-version</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002dversion-1"> ¶</a></span></dt>
<dd><p>The value of this variable is the version of Emacs being run.  It is a
string such as <code class="code">"26.1"</code>.  A value with three numeric components,
such as <code class="code">"26.0.91"</code>, indicates an unreleased test version.
(Prior to Emacs 26.1, the string includes an extra final component
with the integer that is now stored in <code class="code">emacs-build-number</code>;
e.g., <code class="code">"25.1.1"</code>.)
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-emacs_002dmajor_002dversion"><span class="category-def">Variable: </span><span><strong class="def-name">emacs-major-version</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002dmajor_002dversion"> ¶</a></span></dt>
<dd><p>The major version number of Emacs, as an integer.  For Emacs version
23.1, the value is 23.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-emacs_002dminor_002dversion"><span class="category-def">Variable: </span><span><strong class="def-name">emacs-minor-version</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002dminor_002dversion"> ¶</a></span></dt>
<dd><p>The minor version number of Emacs, as an integer.  For Emacs version
23.1, the value is 1.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-emacs_002dbuild_002dnumber"><span class="category-def">Variable: </span><span><strong class="def-name">emacs-build-number</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002dbuild_002dnumber"> ¶</a></span></dt>
<dd><p>An integer that increments each time Emacs is built in the same
directory (without cleaning).  This is only of relevance when
developing Emacs.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-emacs_002drepository_002dversion"><span class="category-def">Variable: </span><span><strong class="def-name">emacs-repository-version</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002drepository_002dversion"> ¶</a></span></dt>
<dd><p>A string that gives the repository revision from which Emacs was
built.  If Emacs was built outside revision control, the value is
<code class="code">nil</code>.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-emacs_002drepository_002dbranch"><span class="category-def">Variable: </span><span><strong class="def-name">emacs-repository-branch</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html#index-emacs_002drepository_002dbranch"> ¶</a></span></dt>
<dd><p>A string that gives the repository branch from which Emacs was built.
In the most cases this is <code class="code">"master"</code>.  If Emacs was built outside
revision control, the value is <code class="code">nil</code>.
</p></dd></dl>

</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Acknowledgments.html">Acknowledgments</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Conventions.html">Conventions</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Introduction.html">Introduction</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>