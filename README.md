<img src="https://raw.githubusercontent.com/aarvay/decoction/master/logo.png" width="120">

# Decoction

Decoction is a static site generator written in Elixir. It is *currently
experimental*.

## Installation
Decoction comes with an installer as a mix archive which will expose a mix task
`decoction.new` for generating new a decoction site. For now you have to build
and install the archive locally. Checkout the installer's
[README](installer/README.md).

## Usage

```sh
$ mix decoction.new my_site && cd my_site
$ mix decoction.prepare
$ mix decoction.serve
```

Point your web browser to http://localhost:4000

## Readme Driven Development

### Introduction
I wanted to explore Elixir and the tools it come with. Writing a static site
generator seemed like an exciting way to to do that because:

 * Fundamentally, static site generators are about transformation of data, which
 is what functional programming encourages. Elixir would be a great fit for the
 job.
 * Elixir ships with tools like Mix, EEx, which could be used right off the
 shelf, for building, templating.
 * Also, why not Elixir(ify) everything? :smirk:

### Goals

 * **Simple** - Make it super simple to create and modify content.
 * **Fast** - Make it super fast at what it does primarily - building the site.
 We can take advantage of Elixir's concurrency paradigms to really achieve this.
 * **Extensible** - Make it easy to extend the tool to fit any use case for
 building a static site. Elixir does this already internally. It's so extensible
 as a language that the language is written mostly written in itself (powerful
 macro system).

## License

Copyright (c) 2015 Vignesh Rajagopalan

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
