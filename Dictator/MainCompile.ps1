$Previous_Error_Action_MAINCOMPILE=$ErrorActionPreference;
$ErrorActionPreference="SilentlyContinue";

echo "[@] Compiling main...";

mkdir Compiled;

g++ Code\main.cpp -o Compiled\Dictator.exe -std=c++20;

if ($?)
{
    echo "[$] Compiled Successfully.";
}
else
{
    echo "[#] Compilation faced with an error.";
}

$ErrorActionPreference=$Previous_Error_Action_MAINCOMPILE;