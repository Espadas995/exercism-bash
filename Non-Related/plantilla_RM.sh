#!/usr/bin/env bash

# SCRIPT PARA CREAR UNA SERIE DE DIRECTORIOS Y FICHEROS
# CON LOS NOMBRES DE LA PLANTILLA DEL REAL MADRID

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> arrays de jugadores <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
porteros=("thibaut_courtois_1" "adriy_lunin_13" "fran_gonzalez_26" "sergio_mestre_34")
laterales=("dani_carvajal_2" "fran_garcia_20" "ferland_mendy_23" "youssef_lekhedim_29"
    "david_jimenez_38" "lorenzo_aguado_39")
centrales=("eder_militao_3" "david_alaba_4" "jessus_vallejo_18" "antonio_rudiger_22"
    "jacobo_ramon_31" "raul_asencio_35" "diego_aguado_43")
mediocentros=("jude_bellingham_5" "eduardo_camavinga_6" "federico_valverde_8"
    "aurélien_tchoameni_14" "arda_guler_15" "chema_andres_36")
mediapuntas=("luka_modric_10" "dani_ceballos_19" "brahim_diaz_21")
mixtos="hugo_de_llanos_40"
extremos=("vinicius_junior_7" "lucas_vazquez_17" "gonzalo_garcia_30" "victor_muñoz_44")
centros=("kylian_mbappe_9" "rodrygo_11" "endrick_16")
segundos="daniel_yañez_42"

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> creación de directorios <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
raiz="real_madrid"
if [ -d $raiz ]; then 
    echo "El directorio raiz (real_madrid) ya existe:"
    echo "  1 - Situate en otra ruta o elimina el existente"
    echo "  2 - Vuelve a ejecutar el script"
else
    mkdir $raiz
    cd real_madrid/
    mkdir porteros defensores defensores/laterales defensores/defensores_centrales \
        centrocampistas centrocampistas/mediocentros centrocampistas/mediapuntas \
        centrocampistas/centrocampistas_mixtos delanteros delanteros/extremos \
        delanteros/delanteros_centros delanteros/segundos_delanteros

    # >>>>>>>>>>>>>>>>>>> generación bucle iterador sobre los directorios <<<<<<<<<<<<<<<<<<<<<
    # >>>>>>>>>>>>>>>> para crear archivos con los nombres de los jugadores <<<<<<<<<<<<<<<<<<<
    cd porteros
    for((i=0;i<${#porteros[@]};i++)); do
        touch "${porteros[i]}"
    done

    cd ../defensores/laterales
    for((i=0;i<${#laterales[@]};i++)); do
        touch "${laterales[i]}"
    done

    cd ../defensores_centrales
    for((i=0;i<${#centrales[@]};i++)); do
        touch "${centrales[i]}"
    done

    cd ../../centrocampistas/mediocentros
    for((i=0;i<${#mediocentros[@]};i++)); do
        touch "${mediocentros[i]}"
    done

    cd ../mediapuntas
    for((i=0;i<${#mediapuntas[@]};i++)); do
        touch "${mediapuntas[i]}"
    done

    cd ../centrocampistas_mixtos
    for((i=0;i<${#mixtos[@]};i++)); do
        touch "${mixtos[i]}"
    done

    cd ../../delanteros/extremos
    for((i=0;i<${#extremos[@]};i++)); do
        touch "${extremos[i]}"
    done

    cd ../delanteros_centros
    for((i=0;i<${#centros[@]};i++)); do
        touch "${centros[i]}"
    done

    cd ../segundos_delanteros
    for((i=0;i<${#segundos[@]};i++)); do
        touch "${segundos[i]}"
    done

    echo "Plantilla creada!"
    echo "Comandos bash utilizados -> mkdir ; cd ; touch ; echo"
fi