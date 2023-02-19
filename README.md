# Mi configuración

Lo carge por si acaso, es que estoy desconfiando
de mi `mismo` ya que creo que lo eliminare

Vendria tras otra mensión pero creo que tendremos que lidiar
con varias otras cosas, no puedo aún tener los snippets de 
`LSP` y no me sale aún, espero reconfigurar eso muy pronto.

### Lo logre

Logre hacer configurar para que salga el completado de los
lenguajes.

Para usarlo se debe de descargar las siguientes cosas:

```bash
# Descargar NodeJs
apt install nodejs 

# CLang
apt install clang

# Rust (para cargo) -- Opcional
apt install rust 
```

Despues en `nvim` ejecutar los siguientes comandos

```vim
:LspInstall <nombre del lenguaje>

:LspStart <opcion>
```
