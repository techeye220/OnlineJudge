<!-- Problem Details page -->
<div class="problem-details">
	<h4>{{.problem.Statement}}</h4>
	<p><b>Problem Description</b>{{ if .isEditor }}<a href="/problem/{{.problem.Pid}}/addtest">+</a>{{ end }}<br/>{{str2html .problem.Description}}</p>
	<p><b>Constraints</b><br/>{{str2html .problem.Constraints}}</p>
	<p><b>Sample Input</b><br/>{{str2html .problem.Sample_input}}</p>
	<p><b>Sample Output</b><br/>{{str2html .problem.Sample_output}}</p>
</div>
<div class="write-code">
	<h5>Submit your code</h5>
	<form action="/problem/{{.problem.Pid}}/submit" method="POST">
		<textarea id="paste_code" name="code" placeholder="// Write Your Code Here"></textarea><br/>
		<select name="language">
			<option value="C">C</option>
			<option value="C++">C++</option>
			<option value="Java">Java</option>
			<option value="Python2">Python2</option>
			<option value="Pytho3">Python3</option>
			<option value="Go">Go</option>
		</select>
		<div class="right"><input type="button" name="save" value="Save Draft"/><input type="button" name="save" value="Clear Draft"/>&nbsp;&nbsp;&nbsp;<input type="button" name="run" value="Run"/><input type="submit"/></div>
	</form>
</div>
<!-- Tell Users that the draft is placed on their computer -->
