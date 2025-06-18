#!/bin/bash

# Listing available SRAM modules
echo -e "\n------ List of available memories ------"
module avail TSMCSRAM 
echo "-------------------------------------------"

# Memory type choosing 
echo -e "\nEnter the SRAM module type:"
echo -e "1PRF (for single-port register file)\n2PRF (for dual-port register file)\nSPSRAM (for single-port SRAM)\nROM (for ROM)" 
read sram_module_type

# Loading the selected memory type
case $sram_module_type in
    1PRF)
        sram_module_name=tsn16ffcll1prf_20131200_120a
        ;;
    2PRF)
        sram_module_name=tsn16ffcll2prf_20131200_170a
        ;;
    SPSRAM)
        sram_module_name=tsn16ffcllspsram_20131200_120a
        ;;
    ROM)
        sram_module_name=tsn16ffcllrom_20131200_120a
        ;;
    DPSRAM)
        sram_module_name=tsn16ffclldpsram_20131200_130a
        ;;
    *)
        echo "[ERROR] Invalid option. Exiting..."
        exit 1
        ;;
esac
echo "[MESSAGE] Loading module: TSMCSRAM/$sram_module_name..."
module load TSMCSRAM/$sram_module_name

# Generate default configuration of selected module
echo "[MESSAGE] Generating default config file..."

alias getdefconfig='cp /tech/tsmc/16FFC/dig_libs/TSMCHOME/sram/Compiler/MC2/MC2_2013.12.00.f/../../$sram_module_name/config.txt . ; chmod 750 ./config.txt'

# Enable alias expansion
shopt -s expand_aliases

# Now run the alias
getdefconfig

echo "[MESSAGE]: This is the default config.txt:"
cat config.txt


# W,N,CM selection
if [[ "$sram_module_type" != "ROM" ]]; then
    echo "Enter word depth (W):"
    read word_depth_W

    echo "Enter number of IO (bits):"
    read num_IO_N

    echo "Enter column mux:"
    read column_mux_CM
else 
    echo "choose ROM sizes (Insert A or B)"
    echo "A) word depth W = 16384 | word width N = 64"
    echo "B) word depth W = 4096 | word width N = 32"
    read ROM_sizes
    case $ROM_sizes in 
        A)
            word_depth_W=16384
            num_IO_N=64
            column_mux_CM=16
            ;;
        B)
            word_depth_W=4096
            num_IO_N=32
            column_mux_CM=16
            ;;
        *)
            echo "[ERROR]: Invalid input - must be A or B. Exiting..."
            exit 1
            ;;
    esac
fi

# list of available word depth options for fast segmentation
F_SEG_WD=(8 12 16 24 28 32 36 40 44 48 56 60 64 68 72 76 80 88 92 96 100 104 108 112
120 124 128 132 136 140 144 152 156 160 164 168 172 176 184 188 192 196 200 204 208
216 220 224 228 232 236 240 248 252 256 260 264 268 272 276 280 284 288
304 312 320 328 336 344 352 368 376 384 392 400 408 416 432 440 448 456 464 472 480
496 504 512 528 544 560 576 608 624 640 656 672 688 704 736 752 768 784 800 816 832
864 880 896 912 928 944 960 992 1008 1024
64 96 128 1216 1248 1280 1312 1344 1376 1408
1472 1504 1536 1568 1600 1632 1664
1728 1760 1792 1824 1856 1888 1920
1984 2016 2048)
# list of available word depth options for small segmentation
S_SEG_WD=(40 44 48 52 56 60 64 68 72 76 80 84 88 92 96
104 108 112 116 120 124 128 132 136 140 144 148 152 156 160
168 172 176 180 184 188 192 196 200 204 208 212 216 220 224
232 236 240 244 248 252 256
80 88 96 104 112 120 128 136 144 152 160 168 176 184 192
208 216 224 232 240 248 256 264 272 280 288 296 304 312 320
336 344 352 360 368 376 384 392 400 408 416 424 432 440 448
464 472 480 488 496 504 512
160 176 192 208 224 240 256 272 288 304 320 336 352 368 384
416 432 448 464 480 496 512 528 544 560 576 592 608 624 640
672 688 704 720 736 752 768 784 800 816 832 848 864 880 896
928 944 960 976 992 1008 1024
320 352 384 416 448 480 512 544 576 608 640 672 704 736 768
832 864 896 928 960 992 1024 1056 1088 1120 1152 1184 1216 1248 1280
1344 1376 1408 1440 1472 1504 1536 1568 1600 1632 1664 1696 1728 1760 1792
1856 1888 1920 1952 1984 2016 2048)

# segmentation config by user (disabled)
# if [[ "$sram_module_type" == "2PRF" ]]; then
#     echo -e "select array segment: \nf  s"
#         read arr_seg_SEG
#         if [[ $arr_seg_SEG != "s" && $arr_seg_SEG != "f" ]]; then
#             echo "[ERROR]: Invalid input - must be s or f. Exiting..."
#             exit 1
#         fi
# elif [[ "$sram_module_type" != "ROM" ]]; then
#     arr_seg_SEG="s"
# fi

# segmentation config automatically - if needed, user selects
if [[ "$sram_module_type" == "2PRF" ]]; then
    in_f=false
    in_s=false

    if [[ " ${F_SEG_WD[@]} " =~ " $word_depth_W " ]]; then
        in_f=true
    fi
    if [[ " ${S_SEG_WD[@]} " =~ " $word_depth_W " ]]; then
        in_s=true
    fi

    if [[ "$in_f" == true && "$in_s" == false ]]; then
        arr_seg_SEG="f"
    elif [[ "$in_s" == true && "$in_f" == false ]]; then
        arr_seg_SEG="s"
    elif [[ "$in_f" == true && "$in_s" == true ]]; then
        echo -e "Select array segment:\n f  s"
        read arr_seg_SEG
        if [[ "$arr_seg_SEG" != "s" && "$arr_seg_SEG" != "f" ]]; then
            echo "[ERROR]: Invalid input - must be s or f. Exiting..."
            exit 1
        fi
    else
        echo "$word_depth_W isn't a valid word depth. Exiting..."
        exit 1
    fi
elif [[ "$sram_module_type" != "ROM" ]]; then
    arr_seg_SEG="s"
fi
#Updating configuration with user input"
if [[ "$sram_module_type" != "ROM" ]]; then
    sed -i "s/[0-9]\+x[0-9]\+m[0-9]*\+[sf]/${word_depth_W}x${num_IO_N}m${column_mux_CM}${arr_seg_SEG}/g" config.txt
else
    sed -i "s/[0-9]\+x[0-9]\+m[0-9]*/${word_depth_W}x${num_IO_N}m${column_mux_CM}/g" config.txt
fi

# Vt selection
echo -e "Select VT for peripheral device:\nLVT   SVT"
read lvt_or_svt
case $lvt_or_svt in 
    LVT)
        lvt_or_svt_txt="-LVT"
        ;;
    SVT)
        lvt_or_svt_txt="-SVT"
        ;;
    *)
        echo "[ERROR] Invalid Option. Exiting..."
        exit 1
        ;;
esac


# BIST en/disable
echo -e "Enable BIST? \nY - yes  N - no"
read BIST_enable
case $BIST_enable in 
    Y)
        BIST_txt=""
        ;;
    N)
        BIST_txt="-NonBIST"
        ;;
    *)
        echo "[ERROR] Invalid Option. Exiting..."
        exit 1
        ;;
esac

# SLP en/disable
if [[ "$sram_module_type" != "ROM" ]]; then
    echo -e "Enable SLP? \nY - yes  N - no"
    read SLP_enable
    case $SLP_enable in 
        Y)
            SLP_txt=""
            ;;
        N)
            SLP_txt="-NonSLP"
            ;;
        *)
            echo "[ERROR] Invalid Option. Exiting..."
            exit 1
            ;;
    esac
fi

# DSLP en/disable
if [[ "$sram_module_type" != "ROM" ]]; then
    echo -e "Enable DSLP? \nY - yes  N - no"
    read DSLP_enable
    case $DSLP_enable in 
        Y)
            DSLP_txt=""
            ;;
        N)
            DSLP_txt="-NonDSLP"
            ;;
        *)
            echo "[ERROR] Invalid Option. Exiting..."
            exit 1
            ;;
    esac
fi 

# SD en/disable
echo -e "Enable SD? \nY - yes  N - no"
read SD_enable
case $SD_enable in 
    Y)
        SD_txt=""
        ;;
    N)
        SD_txt="-NonSD"
        ;;
    *)
        echo "[ERROR] Invalid Option. Exiting..."
        exit 1
        ;;
esac

# DR en/disable
# echo -e "Enable DualRail? \nY - yes  N - no"
# read DR_enable
# case $DR_enable in 
#     Y)
#         DR_txt="-DualRail"
#         ;;
#     N)
#         DR_txt=""
#         ;;
#     *)
#         echo "[ERROR] Invalid Option. Exiting..."
#         exit 1
#         ;;
# esac

# redundancy en/disable
if [[ "$sram_module_type" != "ROM" ]]; then
    echo -e "Enable Column Redundancy? \nY - yes  N - no"
    read Redun_enable
    case $Redun_enable in 
        Y)
            Redun_txt="-ColRed"
            ;;
        N)
            Redun_txt=""
            ;;
        *)
            echo "[ERROR] Invalid Option. Exiting..."
            exit 1
            ;;
    esac
fi


echo "[MESSAGE]: This is the chosen configuration:"
cat config.txt
echo $lvt_or_svt_txt $BIST_txt $SLP_txt $DSLP_txt $SD_txt $Redun_txt
echo "Continue to compilation? Y/N"
read con_to_comp
case $con_to_comp in
    N)
        echo "Exiting..."
        exit 
        ;;
    Y)
        # Run the memory compiler
        echo "[MESSAGE]: Running TSMC SRAM compiler..."
        if [[ "$sram_module_type" == "ROM" ]]; then
            tsmcsram -GenROMCode $lvt_or_svt_txt $BIST_txt $SD_txt > memory_output.log
        else 
            tsmcsram $lvt_or_svt_txt $BIST_txt $SLP_txt $DSLP_txt $SD_txt $Redun_txt> memory_output.log
        fi
        if grep -q "\[ERROR\]" memory_output.log; then
            echo -e "\nERROR detected in memory_output.log:"
            awk '/\[ERROR\]/ {found=1} found' memory_output.log
            echo "[MESSAGE]: Compilation Failed!"
            exit 1
        fi

        echo "[MESSAGE]: Process finished!"
        echo "[MESSAGE]: See memory_output.log"
        echo -e "\n-------- Area, Timing and Power report --------"
        ;;
    *)
        echo "[ERROR] Invalid Option. Exiting..."
        exit 1
        ;;  
esac

# Extract and display power, area, and access time 

# Get the first match for either "Created directory" or "Overwriting files in  directory"
output_dir_name=$(grep -m 1 -E "Created directory|Overwriting files in directory" memory_output.log \
    | sed -E 's/.*(Created directory|Overwriting files in directory)\s+['\''"]?([^'\''"]+)['\''"]?/\2/') 
# Remove spaces in the end
output_dir_name=$(echo "$output_dir_name" | xargs)

# Debug check
echo "Detected output dir: [$output_dir_name]"

# Print Area information
grep -A 7 "1. Area" "$(find ./$output_dir_name/DATASHEET -type f | head -n 1)"

# Print setup timing header
echo -e "\n2. clk->Q and Setup Timing [ns]"

# Determine corner filenames 
ff_file="$output_dir_name/DATASHEET/${output_dir_name}_ffgnp0p88vm40c.ds"
ss_file="$output_dir_name/DATASHEET/${output_dir_name}_ssgnp0p72v125c.ds"

# Print setup and clk->Q times from SS corner file
if [[ -f "$ss_file" ]]; then
    echo -e "\nSS Corner ($ss_file)"
    grep -i -m 1 "^[[:space:]]*tcd" "$ss_file"   # Clk-to-Q
    grep -i -m 1 "^[[:space:]]*tas" "$ss_file"   # Setup A time (single port)
    grep -i -m 1 "^[[:space:]]*taas" "$ss_file"  # Setup AA time (dual port)
    grep -i -m 1 "^[[:space:]]*tabs" "$ss_file"  # Setup AB time (dual port)
    grep -i -m 1 "^[[:space:]]*tds" "$ss_file"   # Data Setup time
    
else
    echo "SS timing file not found: $ss_file"
fi

# Print hold timing header
echo -e "\n3. Hold Timing [ns]"

# Print hold time from FF corner file
if [[ -f "$ff_file" ]]; then
    echo -e "\nFF Corner ($ff_file)"
    grep -i -m 1 "^[[:space:]]*tah" "$ff_file"   # Hold A time (single port)
    grep -i -m 1 "^[[:space:]]*taah" "$ff_file"  # Hold AA time (dual port)
    grep -i -m 1 "^[[:space:]]*tabh" "$ff_file"  # Hold AB time (dual port)
    grep -i -m 1 "^[[:space:]]*tdh" "$ff_file"   # Data Hold time
else
    echo "FF timing file not found: $ff_file"
fi

# Print Power header
echo -e "\n4. Power"
echo -e "\nFF Corner ($ff_file)"

# Print Power information
awk '/4\.1 Static Power/ {start=1} /Leakage Current =/ {start=0} start && !/Leakage Current =/' "$ff_file"
awk -v is_rom="$sram_module_type" '
/4\.2 Dynamic Power/ {start=1}
start {
    print
    if ($0 ~ /^[[:space:]]*[Rr]ead/) {
        r=1
        if (is_rom == "ROM") exit
    }
    if ($0 ~ /^[[:space:]]*[Ww]rite/) w=1
    if (r && w && is_rom != "ROM") exit
}' "$ff_file"


