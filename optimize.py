import os
import subprocess
import sys

# Instalar Pillow dinámicamente
subprocess.check_call([sys.executable, "-m", "pip", "install", "Pillow"])

from PIL import Image

img_dir = "assets/img"
html_path = "index.html"

print("Convirtiendo imágenes...")
converted_files = []
for root, dirs, files in os.walk(img_dir):
    for file in files:
        if file.lower().endswith((".png", ".jpg", ".jpeg")):
            img_path = os.path.join(root, file)
            output_path = os.path.splitext(img_path)[0] + ".webp"
            try:
                with Image.open(img_path) as img:
                    img.save(output_path, "WEBP", quality=75)
                os.remove(img_path)
                converted_files.append((file, os.path.basename(output_path)))
                print(f"Optimizado: {file} -> {os.path.basename(output_path)}")
            except Exception as e:
                print(f"Error en {file}: {e}")

print(f"Actualizando HTML...")
with open(html_path, "r", encoding="utf-8") as f:
    content = f.read()

for old, new in converted_files:
    content = content.replace(old, new)

with open(html_path, "w", encoding="utf-8") as f:
    f.write(content)

print("Proceso completado con éxito.")
