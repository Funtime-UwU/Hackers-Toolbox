$Previous_Error_Action_MODULECOMPILE=$ErrorActionPreference;
$ErrorActionPreference="SilentlyContinue";

echo "[@] Compiling modules...";

mkdir Compiled;

g++ Code\ModuleTest.cpp -o Compiled\Modules.exe -std=c++20;

if ($?)
{
    echo "[$] Compiled Successfully.";
}
else
{
    echo "[#] Compilation faced with an error.";
}

$ErrorActionPreference=$Previous_Error_Action_MODULECOMPILE