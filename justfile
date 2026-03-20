set shell := ["nu", "-c"]


default:
    just --list

# install js deps
setup:
    npm install

# start dev server
dev:
    hugo server --buildDrafts --bind 127.0.0.1

# compile CV from Typst
cv:
    # typst compile cv/cv.typ static/cv.pdf

# build site to ./public  (compiles CV first)
build: cv
    hugo --minify

# build and preview locally
preview:
    hugo--minify && hugo server --disableFastRender --renderToMemory

# create a new writing post  e.g: just post "my post title"
post title:
    hugo new content "writing/{{ lowercase(replace(title, ' ', '-')) }}.md"

# private: base recipe for all pick types
_pick archetype dir title:
    hugo new content --kind "{{archetype}}" "picks/{{dir}}/{{ lowercase(replace(title, ' ', '-')) }}.md"

# create a new youtube pick  e.g: just yt "talk title"
yt title:
    just _pick yt-pick youtube "{{title}}"

# create a new book pick  e.g: just book "book title"
book title:
    just _pick book-pick books "{{title}}"

# create a new blog pick  e.g: just blog "blog title"
blog title:
    just _pick blog-pick blogs "{{title}}"

# clean build output
clean:
    rm -rf public resources/_gen

# format markdown content and css
fmt:
    npx prettier --write "content/**/*.md" "assets/**/*.css"

# lint markdown content
lint:
    npx markdownlint-cli2 "content/**/*.md"
