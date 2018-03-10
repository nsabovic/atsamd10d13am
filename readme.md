### Building

```sh
xargo build --target thumbv6m-none-eabi
```

### Updating

Download the correct Atmel pack from
(Atmel download site)[http://packs.download.atmel.com/#collapse-Atmel-SAMD10-DFP-pdsc]
and unzip it. The SVDs are in the `svd` directory.

```sh
svd2rust -i svd/ATSAMD10D13AM.svd | rustfmt > src/lib.rs
```
