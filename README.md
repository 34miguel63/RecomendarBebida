# Recomendador de Bebidas para mejorar Tú salud  ☕🍋  

Este es un sistema experto básico implementado en Prolog que recomienda una bebida adecuada para mejorar la salud según:
- La hora del día (mañana, tarde o noche)
- El clima (caluroso o frío)

Ideal como ejercicio introductorio a la programación lógica y los sistemas basados en reglas.

         📁 Archivos del proyecto

- `RecomendarBebida.pl`: Código fuente del sistema en Prolog.
---
# ▶️ Cómo ejecutar
1. Instala SWI-Prolog (si no lo tienes):  
   🌐 [https://www.swi-prolog.org/](https://www.swi-prolog.org/)

2. Abre SWI-Prolog y carga el archivo:
   ```prolog
   ?- [recomendador_bebidas].
---
# Logica del Sistema:
Hora,Clima,Recomendación
6–11,Calido,Jugo de naranja fresco
6–11,Frío,Café caliente
12–18,Calido,Agua de limón con hielo
12–18,Frío,Té caliente
19–23 / 0–5,Calido,Agua natural
19–23 / 0–5,Frío,Leche tibia con miel
---
Este Proyecto demuestra: 
. Uso de hechos y reglas en Prolog
. Patrones de inferencia simples
. Como modelar deciciones del mundo real con Logica 
---
# 📚 **Documentación y Demostración**

- **Notebook completo en Google Colab**:  
  [Ver notebook interactivo](https://github.com/34miguel63/RecomendarBebida/blob/main/Copy_of_Prolog_Diagrama.ipynb)

- **Video de demostración**:  
  [Ver video](demo.mp4)
---
👨‍💻 Autor
Miguel A. Banteurt Blanco - Proyecto desarrollado como parte del curso de Inteligencia Artificial
docs: añadir sección de demostración con botón Open in Colab
