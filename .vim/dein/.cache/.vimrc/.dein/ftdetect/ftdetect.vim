autocmd BufNewFile,BufRead *.flow setfiletype flow
fun! s:SelectJavascript()
  if getline(1) =~# '^#!.*/bin/\%(env\s\+\)\?node\>'
    set ft=javascript
  endif
endfun

autocmd BufNewFile,BufRead *.{js,mjs,cjs,jsm,es,es6},Jakefile setfiletype javascript
autocmd BufNewFile,BufRead * call s:SelectJavascript()
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.css setfiletype css
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.graphql,*.gql setfiletype graphql
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.html setfiletype html
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.js,*jsx setfiletype javascript
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.json setfiletype json
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.less setfiletype less
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.lua setfiletype lua
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.markdown,*.md,*.mdown,*.mkd,*.mkdn setfiletype markdown
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.php setfiletype php 
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.rb setfiletype ruby
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.scss setfiletype scss
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.svelte setfiletype svelte
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.ts setfiletype typescript
  autocmd BufNewFile,BufReadPost *.tsx setfiletype typescriptreact
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.vue setfiletype vue
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.xml setfiletype xml
augroup end
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.yaml,*.yml setfiletype yaml
augroup end
