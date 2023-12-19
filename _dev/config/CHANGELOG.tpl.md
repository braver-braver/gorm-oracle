{{ if .Versions -}}
{{ if .Unreleased.CommitGroups -}}
<a name="unreleased"></a>

## ⭐ [最新变更]({{ .Info.RepositoryURL }}/compare/{{ $latest := index .Versions 0 }}{{ $latest.Tag.Name }}...main)

{{ range .Unreleased.CommitGroups -}}

### {{ .Title }}

{{ range .Commits -}}
{{/* SKIPPING RULES - START */ -}}
{{- if not (contains .Subject " CHANGELOG") -}}
{{- if not (contains .Subject "[ci skip]") -}}
{{- if not (contains .Subject "[skip ci]") -}}
{{- if not (hasPrefix .Subject "Merge pull request ") -}}
{{- if not (hasPrefix .Subject "Merge remote-tracking ") -}}
{{- /* SKIPPING RULES - END */ -}}
- [{{ if .Type }}`{{ .Type }}`{{ end }}{{ .Subject }}]({{ $.Info.RepositoryURL }}/commit/{{ .Hash.Long }}) - `{{ datetime "2006-01-02 15:04" .Committer.Date }}`
{{ if .TrimmedBody }}
{{- if not (hasPrefix .TrimmedBody "go: upgraded") }}
  <blockquote><details>
  <summary style="cursor:pointer">更多说明</summary>

{{ indent .TrimmedBody 2 }}

  </details></blockquote>
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - START */ -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - END */ -}}
{{ end }}
{{ end -}}
{{ else }}
{{- range .Unreleased.Commits -}}
{{/* SKIPPING RULES - START */ -}}
{{- if not (contains .Subject " CHANGELOG") -}}
{{- if not (contains .Subject "[ci skip]") -}}
{{- if not (contains .Subject "[skip ci]") -}}
{{- if not (hasPrefix .Subject "Merge pull request ") -}}
{{- if not (hasPrefix .Subject "Merge remote-tracking ") -}}
{{- /* SKIPPING RULES - END */ -}}
- [{{ if .Type }}`{{ .Type }}`{{ end }}{{ .Subject }}]({{ $.Info.RepositoryURL }}/commit/{{ .Hash.Long }})
{{ if .TrimmedBody }}
{{- if not (hasPrefix .TrimmedBody "go: upgraded") }}
  <blockquote><details>
  <summary style="cursor:pointer">更多说明</summary>

{{ indent .TrimmedBody 2 }}

  </details></blockquote>
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - START */ -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - END */ -}}
{{ end -}}
{{ end -}}
{{ end -}}

{{ range .Versions }}{{ $currTagName := .Tag.Name }}<a name="{{ $currTagName }}"></a>

## 🔖 {{ if .Tag.Previous -}}
[{{ .Tag.Name }}]({{ $.Info.RepositoryURL }}/compare/{{ .Tag.Previous.Name }}...{{ .Tag.Name }})
{{- else }}{{ .Tag.Name }}{{ end }} - {{ datetime "2006-01-02" .Tag.Date }}

{{ if .CommitGroups -}}
{{ range .CommitGroups -}}
### {{ .Title }} {{ $currTagName }}

{{ range .Commits -}}
{{/* SKIPPING RULES - START */ -}}
{{- if not (contains .Subject " CHANGELOG") -}}
{{- if not (contains .Subject "[ci skip]") -}}
{{- if not (contains .Subject "[skip ci]") -}}
{{- if not (hasPrefix .Subject "Merge pull request ") -}}
{{- if not (hasPrefix .Subject "Merge remote-tracking ") -}}
{{- /* SKIPPING RULES - END */ -}}
- [{{ if .Type }}`{{ .Type }}`{{ end }}{{ .Subject }}]({{ $.Info.RepositoryURL }}/commit/{{ .Hash.Long }})
{{ if .TrimmedBody }}
{{- if not (hasPrefix .TrimmedBody "go: upgraded") }}
  <blockquote><details>
  <summary style="cursor:pointer">更多说明</summary>

{{ indent .TrimmedBody 2 }}

  </details></blockquote>
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - START */ -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - END */ -}}
{{ end }}
{{ end -}}
{{ else }}{{ range .Commits -}}
{{/* SKIPPING RULES - START */ -}}
{{- if not (contains .Subject " CHANGELOG") -}}
{{- if not (contains .Subject "[ci skip]") -}}
{{- if not (contains .Subject "[skip ci]") -}}
{{- if not (hasPrefix .Subject "Merge pull request ") -}}
{{- if not (hasPrefix .Subject "Merge remote-tracking ") -}}
{{- /* SKIPPING RULES - END */ -}}
- [{{ if .Type }}`{{ .Type }}`{{ end }}{{ .Subject }}]({{ $.Info.RepositoryURL }}/commit/{{ .Hash.Long }})
{{ if .TrimmedBody }}
{{- if not (hasPrefix .TrimmedBody "go: upgraded") }}
  <blockquote><details>
  <summary style="cursor:pointer">更多说明</summary>

{{ indent .TrimmedBody 2 }}

  </details></blockquote>
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - START */ -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - END */ -}}
{{ end }}
{{ end -}}

{{- if .NoteGroups -}}
{{ range .NoteGroups -}}

### {{ .Title }}

{{ range .Notes }}
{{ .Body }}
{{ end }}
{{ end -}}
{{ end -}}
{{ end -}}
