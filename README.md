# FDE Training Workshop Slides

A static, single-file HTML presentation. Open `index.html` locally or publish this repository with GitHub Pages. The deck includes its CSS, JavaScript, screenshots, and diagrams; Google Fonts are an optional network enhancement with system font fallbacks.

## Update from the source workspace

Run the publish script and pass the source workspace path:

```sh
./publish.sh /path/to/ai_engineer_presentation
```

The script copies the generated deck from `presentations/fde-workshop/index.html`, then commits and pushes the update to this repository. Build the source deck first with:

```sh
python3 presentations/fde-workshop/build.py
```
