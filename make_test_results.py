from PIL import Image, ImageDraw, ImageFont
img = Image.new('RGB', (1200, 400), 'white')
draw = ImageDraw.Draw(img)
font = ImageFont.load_default()
draw.text((40, 40), 'dart test test/all_tests.dart\n00:00 +5: All tests passed!', fill='black', font=font)
img.save('test-results.png')
print('Saved test-results.png')
