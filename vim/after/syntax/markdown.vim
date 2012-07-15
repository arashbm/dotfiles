" YAML front matter
syntax match Comment /\%^---\_.\{-}---$/ contains=@Spell

" Match the Octopress Backtick Code Block line
syntax match codeblockContents contained /^\(```\)\@!.*/
syntax region octoBacktickCodeBlockRegion start=/^```/ end=/^```/ contains=codeblockContents keepend

" Match Liquid Tags and Filters
syntax match liquidTag /{[{%].*[}%]}/

hi def link codeblockContents Ignore
hi def link jekyllFrontMatter Comment
hi def link liquidTag Statement
hi def link octoBacktickCodeBlockRegion Statement
hi def link octoCodeBlockRegion Statement
