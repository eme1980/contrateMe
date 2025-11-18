# contrateMe - Portfolio de Miguel Pérez García

[![Author](https://img.shields.io/badge/Author-Miguel%20Pérez%20García-blue.svg?style=flat)](https://github.com/eme1980)
[![License](https://img.shields.io/badge/MIT-License-brightgreen.svg?style=flat)](LICENSE.md)
[![Version](https://img.shields.io/badge/Version-1.0.0-blueviolet.svg?style=flat)](https://github.com/eme1980/contrateMe)

## Descripción del Proyecto

**contrateMe** es el portfolio personal de Miguel Pérez García (eMe), diseñado para mostrar proyectos, habilidades y experiencia profesional. Es un sitio web moderno y responsivo desarrollado con tecnologías frontend actuales.

## Características

- 🎨 Diseño moderno y responsivo con Bootstrap
- ⚡ Compilación automática con Gulp 4
- 🎯 Preprocesador Sass para estilos mantenibles
- 🔄 Live reload con BrowserSync
- 📦 Minificación de CSS y JavaScript
- 📱 Totalmente optimizado para dispositivos móviles

## Comenzando

Sigue estas instrucciones para ejecutar el proyecto en tu máquina local.

### Prerequisitos

Necesitas tener instalado:
- Node.js y npm
- Gulp instalado globalmente (opcional pero recomendado)

```bash
npm install gulp-cli -g
```

### Instalación

1. **Clonar el repositorio**

```bash
git clone https://github.com/eme1980/contrateMe.git
cd contrateMe
```

2. **Instalar dependencias**

```bash
npm install
```

### Comandos Disponibles

**Iniciar el servidor de desarrollo (Live reload)**

```bash
npm run start
```

Este comando inicia el servidor local con BrowserSync, compilará los archivos Sass automáticamente y recargará el navegador con cada cambio.

**Compilar para producción**

```bash
npm run build
```

Genera los archivos optimizados en la carpeta `public/`, listos para desplegar.

**Limpiar archivos compilados**

```bash
npm run clean
```

## Estructura del Proyecto

```
contrateMe/
├── src/                    # Archivos fuente
│   ├── index.html         # Página principal
│   ├── assets/
│   │   ├── fonts/         # Fuentes personalizadas
│   │   ├── img/           # Imágenes (finect, nisgo, pridatect)
│   │   ├── js/            # JavaScript
│   │   ├── partials/      # Componentes HTML (header, footer)
│   │   └── sass/          # Estilos Sass
│   └── ...
├── public/                 # Archivos compilados (generado automáticamente)
├── gulpfile.js           # Configuración de Gulp
├── package.json          # Dependencias del proyecto
└── .gitignore           # Archivos a ignorar en Git
```

## Tecnologías Utilizadas

- **HTML5** - Estructura semántica
- **Sass** - Preprocesador CSS
- **Bootstrap 4** - Framework CSS responsivo
- **Gulp 4** - Automatización de tareas
- **CSS3** - Estilos avanzados y animaciones
- **JavaScript (ES6+)** - Interactividad

## Recursos Útiles

- [Documentación de Bootstrap 4](https://getbootstrap.com/docs/4.6/)
- [Documentación de Gulp 4](https://gulpjs.com/)
- [Documentación de Sass](https://sass-lang.com/documentation)

## Autor

**Miguel Pérez García (eMe)**
- GitHub: [@eme1980](https://github.com/eme1980)

## Licencia

Este proyecto está bajo la licencia MIT - consulta el archivo [LICENSE.md](LICENSE.md) para más detalles.

---

**Última actualización:** 12 de noviembre de 2025



<!-- Test auto-deploy -->
<!-- Webhook secret removed - testing auto-deploy fix -->
<!-- Testing with new webhook secret: dokploy2025webhook -->
