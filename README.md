# Cross-Federation Trust via OpenID Federation Trust Marks

A profile (extension) of **OpenID Federation 1.1** that lets a Relying Party in
one federation trust a Credential Issuer anchored in a *different* federation,
on the basis of a Trust Mark issued in the Relying Party's own federation — with
no shared Trust Anchor and no pre-configured bridge. The Trust Mark pins the
foreign (Subject) Trust Anchor's identity and keys, so the Credential Issuer's
Trust Chain can be resolved from a Trust Mark the verifier already trusts. The
Trust Mark is bound to issued credentials using the W3C VC Data Model
`termsOfUse` property.

Status: **Draft 0.1**.

## Tooling

This specification is authored in **xml2rfc v3 XML** and compiled to HTML with
**[xml2rfc](https://pypi.org/project/xml2rfc/)** — the same toolchain used by the
OpenID Connect Working Group for the OpenID Federation specifications.

## Building locally

```bash
pip install xml2rfc
make            # builds HTML and TXT
make html       # HTML only
make clean
```

The authoritative output is the HTML. CI (`.github/workflows/gh-pages.yml`)
builds `html/<branch>.html` on every push and deploys it to GitHub Pages,
mirroring the OpenID Federation repository's workflow.

## Layout

```
openid-cross-federation-trust-marks-1_0.xml   # specification source (authoritative input)
Makefile                                       # xml2rfc build
.github/workflows/gh-pages.yml                 # CI: build + publish to gh-pages
```
