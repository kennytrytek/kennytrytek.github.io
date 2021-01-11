# Translate Wim Hof markdowns to HTML
rm -rf ./build/wimhof && mkdir -p ./build/wimhof
for f in $(find wimhof -iname '*.md'); do
  echo "./node_modules/.bin/marked -i "$f" -o "build/${f//\.md/\.html}""
  ./node_modules/.bin/marked -i "$f" -o "build/${f//\.md/\.html}"
done
