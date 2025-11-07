@echo off
echo ===========================================
echo    VERCEL DEPLOYMENT PREPARATION
echo ===========================================
echo.
echo Step 1: Fixing all paths for Vercel...
call fix_paths.bat

echo.
echo Step 2: Checking required files...
if exist "flowers.html" (
    echo ✓ flowers.html exists
) else (
    echo ✗ flowers.html missing
)

if exist "CSS\Flower.css" (
    echo ✓ CSS/Flower.css exists
) else (
    echo ✗ CSS/Flower.css missing
)

if exist "Image\anh 1.jpg" (
    echo ✓ Image files exist
) else (
    echo ✗ Image files missing
)

if exist "vercel.json" (
    echo ✓ vercel.json exists
) else (
    echo ✗ vercel.json missing
)

echo.
echo ===========================================
echo    READY FOR VERCEL DEPLOYMENT!
echo ===========================================
echo.
echo Next steps:
echo 1. Push your code to GitHub
echo 2. Connect to Vercel
echo 3. Deploy!
echo.
echo Your main page will be: flowers.html
echo Which contains the Kim Phung flower animation
echo.
pause
