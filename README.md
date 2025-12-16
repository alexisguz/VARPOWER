# PowerliftingARValidator

Prototipo iOS del Trabajo Final de Grado **“Sistema de validación de movimientos de powerlifting con realidad aumentada”**.

Este repositorio contiene un **esqueleto funcional** (compilable) con:
- UI en **SwiftUI** (login, home, listado de intentos, nuevo intento)
- Integración base con **ARKit** (captura de frames) y **Vision** (pose detection)
- Persistencia base con **Core Data** (estructura inicial)
- Stubs/TO-DOs para el motor de validación IPF, overlays y modelos Core ML

> Nota: Este repositorio está pensado para mostrar avance de arquitectura y módulos principales, con puntos de extensión señalizados mediante `TODO:`.

---

## Requisitos

- macOS + **Xcode** (versión estable)
- iPhone compatible con **ARKit** (recomendado para pruebas de captura real)
- iOS actualizado

---

## Cómo ejecutar

1. Abrir el proyecto en Xcode (crear tu `.xcodeproj` si todavía no lo tenés).
2. Configurar **Signing & Capabilities**:
   - Team (tu Apple ID)
   - Bundle Identifier (si Xcode lo solicita)
3. Ejecutar:
   - En simulador: UI y lógica (AR limitado)
   - En dispositivo físico: recomendado para AR/Vision en vivo

---

## Estructura

```
PowerliftingARValidatorApp/
├─ App/                 # Entrada y entorno
├─ UI/                  # SwiftUI (Auth/Home/Attempts/Components)
├─ Domain/              # Modelos, casos de uso y motor de validación (stubs)
├─ AR/                  # Captura ARKit + puente SwiftUI
├─ Vision/              # Pose detection (Vision)
├─ ML/                  # Core ML stubs (placeholders)
├─ Data/                # Core Data + repositorios
└─ Utils/               # Helpers (logs, permisos)
```

---

## Roadmap (siguiente avance)

- [ ] Implementar importación de video (PhotosPicker / FileImporter)
- [ ] Render de overlay (líneas/ángulos) sobre el frame
- [ ] Cálculo biomecánico (ángulos cadera/rodilla/hombro)
- [ ] Motor de reglas IPF (profundidad, pausa en banca, lockout)
- [ ] Persistencia de intentos (Core Data) + sincronización opcional (CloudKit)

---

## Licencia

Uso académico. Ajustar a la licencia requerida por tu cátedra / universidad.
