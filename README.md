# Gollum Docker image

Docker image running [Gollum](https://github.com/gollum/gollum) wiki


## Usage

Let's say you have a wiki git repository in `./my-wiki`

`docker run -d -p 8080:8080 -v $(pwd):/wiki -u $UID:$GID tomdesinto/gollum`
