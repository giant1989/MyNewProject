#Configuration du projet

project(MyProject)

set(EXECUTABLE_OUTPUT_PATH bin/${CMAKE_BUILD_TYPE})


#Génération de la liste des fichiers sources

file(

        GLOB_RECURSE

        source_files

        src/*

)


#Déclaration de l'exécutable

add_executable(

        my_exe

        ${source_files}

)
