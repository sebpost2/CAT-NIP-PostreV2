**[English](readme.md) · [Español](readme.es.md)**

---

# Cat-Nip

Juego 2D de plataformas y puzles desarrollado en **Godot Engine** con **GDScript**, como proyecto universitario. Llevé el rol de **líder de programación**: diseñé la IA de enemigos, el jefe final, y armé el pipeline de animación pixel-art.

Autor: [sebpost2](https://github.com/sebpost2)

---

## Mi rol

- **Líder de programación** del equipo.
- **IA de enemigos**: estados de patrullaje, detección, ataque y stunning. Eslabones de detección por silueta y señal previa al ataque.
- **Jefe final**: patrones de ataque por fases, hitboxes, animación dedicada y escenario propio.
- **Pipeline de animación pixel-art**: integración de sprite sheets, máquinas de estados y blending entre poses.
- **Mecánicas de movimiento**: salto, salto doble, ataque básico y ataques especiales (incluyendo el "tornado").
- **Sistema de combate**: cajas de daño, cajas de impacto y feedback visual.

## Capturas destacadas

| | |
|---|---|
| ![Primer prototipo](images/Cat_nip1.jpg) | **Prototipo inicial** — prueba de tileset y control básico del gato. |
| ![Combate temprano](images/Cat_nip2.jpg) | **Combate temprano** contra el ícono rojo de Godot (hitbox + animación de ataque). |
| ![Hitboxes](images/Cat_nip3.jpg) | **Depuración de colisiones**: caja de daño y caja de impacto en la rata guerrera. |
| ![Ataques especiales](images/Cat_nip4.jpg) | **Ataques especiales** — ataque tornado del gato. |
| ![IA enemiga](images/Cat_nip5.jpg) | **IA enemiga**: detección de silueta del gato y señal previa al ataque. |
| ![Jefe final WIP](images/Cat_nip6.jpg) | **Jefe final (WIP)**: animación preliminar y escenario dedicado. |

## Stack

| Capa | Tecnología |
|---|---|
| Engine | Godot 4 |
| Lenguaje | GDScript |
| Arte | Pixel-art (sprite sheets propios) |
| Audio | Efectos y música integrados como recursos del proyecto |

## Estructura del proyecto

```
├── Assets/        # Sprites, tilesets, fuentes
├── Bosses/        # Escenas y scripts de jefes
├── Componentes/   # Componentes reutilizables (hitbox, hurtbox, etc.)
├── Enemigos/      # Escenas, animaciones e IA de enemigos
├── Game/          # Niveles, gestor de juego
├── Global/        # Singletons (autoload) — estado global, gestores
├── Player/        # Escena, animaciones y scripts del gato
├── Sounds/        # SFX y música
└── project.godot
```

## Correr localmente

1. Clona el repositorio.
2. Abre Godot Engine 4.
3. En el launcher de Godot haz clic en **Import** y selecciona la carpeta del proyecto.
4. Doble clic en `project.godot` para abrirlo.
5. Presiona F5 para correr.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](./LICENSE) para más detalles.

---

Construido como proyecto universitario por el equipo. Programación liderada por [sebpost2](https://github.com/sebpost2).
