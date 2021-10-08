cd /d %~dp0

rd /s /q _build

mkdir _build
cd _build
:: -DPYTHON_EXECUTABLE:FILEPATH=D:\Blender\stable\blender-2.93.5+lts.a791bdabd0b2\2.93\python\bin -DPYTHON_LIBRARIES=C:/Users/Admin/AppData/Local/Programs/Python/Python39/libs/Python39.lib
:: cmake .. -G "Visual Studio 15 2017 Win64" -DHFS="D:/Side Effects Software/Houdini 18.5.696" -DPYBIND11_PYTHON_VERSION=3.7 -DPYTHON_EXECUTABLE:FILEPATH=C:/Users/Admin/AppData/Local/Programs/Python/Python37/python.exe
cmake .. -G "Visual Studio 15 2017 Win64" -DHFS="D:/Side Effects Software/Houdini 18.5.696" 
del CMakeCache.txt

cd ..
rd /s /q _build

