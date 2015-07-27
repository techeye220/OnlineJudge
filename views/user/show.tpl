<div>
	<br/><h4>{{.userDetails.Name}} @{{.userDetails.Username}}</h4>
	<p>
		<span>Score: {{.userDetails.Score}}</span><br/>
		<span>College: {{.userDetails.College}}</span><br/>
	</p>
	<div>
		<h5>Problems Solved</h5>
		{{ if .solvedProblemsExist }}
			{{range $key, $val := .solvedProblems}}
			<a href="/problem/{{.Pid}}">{{.Statement}}</a><br/>
			{{end}}
		{{ else }}
			<span>Not solved any yet.</span>
		{{ end }}
	</div>
</div>