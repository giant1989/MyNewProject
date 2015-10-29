cmake_minimum_required(VERSION 2.8)

#Configuration du projet

project(MyProject)


#Inclusion de Boost

include_directories(/usr/include/Boost/)

link_directories(/usr/lib/x86_64-linux-gnu/)


set(EXECUTABLE_OUTPUT_PATH bin)

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

#Configuration de l'édition de liens

target_link_libraries(

        my_exe

        boost_regex

)
