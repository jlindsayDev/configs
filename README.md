#  Make My Server

I am dabbling in the world of self-hosting. This is my testing-ground.

Inspired (and some parts borrowed from)
- [tomMoulard/make-my-server](https://github.com/tomMoulard/make-my-server)
- [tailscale-dev/scaletail](https://github.com/tailscale-dev/ScaleTail)

### Run (ideally)

```bash
bash ./scripts/install.sh machine_name directory [hosts...]
```

Examples to make my own servers:

```bash
bash ./scripts/install.sh airmac ~/Docker \
  airmac.local \
  airmac.orb.local
```

```bash
bash ./scripts/install.sh pibox /data/docker \
  pibox.local
```

### TODO

- [ ] make install script set things up
- [ ] incorporate `ALLOWED_HOSTS`
- [ ] allow selection of services to install
- [ ] test this by installing services on steamdeck
