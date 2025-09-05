# For white backgrounds
for img in ~/.config/fastfetch/imgs/*.png; do
    magick "$img" -transparent white "${img%.*}_transparent.png"
done

# For black backgrounds
for img in ~/.config/fastfetch/imgs/*.png; do
    magick "$img" -transparent black "${img%.*}_transparent.png"
done

# For more complex backgrounds (fuzzy matching)
for img in ~/.config/fastfetch/imgs/*.png; do
    magick "$img" -fuzz 10% -transparent white "${img%.*}_transparent.png"
done
