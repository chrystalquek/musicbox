;FLAVOR:Marlin
;TIME:813
;Filament used: 0.267162m
;Layer height: 0.2
;MINX:92.515
;MINY:92.515
;MINZ:0.2
;MAXX:127.486
;MAXY:127.485
;MAXZ:19.8
;Generated with Cura_SteamEngine 4.7.1
M140 S50
M105
M190 S50
M104 S190
M105
M109 S190
M82 ;absolute extrusion mode
M201 X500.00 Y500.00 Z100.00 E5000.00 ;Setup machine max acceleration
M203 X500.00 Y500.00 Z10.00 E50.00 ;Setup machine max feedrate
M204 P500.00 R1000.00 T500.00 ;Setup Print/Retract/Travel acceleration
M205 X8.00 Y8.00 Z0.40 E5.00 ;Setup Jerk
M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate

G28 ;Home

G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position
G1 X10.1 Y200.0 Z0.28 F1500.0 E15 ;Draw the first line
G1 X10.4 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up

G92 E0
G92 E0
G1 F2700 E-6.5
;LAYER_COUNT:99
;LAYER:0
M107
G0 F6000 X97.604 Y97.669 Z0.2
;TYPE:SKIRT
G1 F2700 E0
G1 F1200 X98.13 Y97.161 E0.02432
G1 X98.427 Y96.892 E0.03765
G1 X98.935 Y96.459 E0.05985
G1 X99.151 Y96.286 E0.06905
G1 X99.669 Y95.896 E0.09062
G1 X100.125 Y95.573 E0.10921
G1 X100.742 Y95.166 E0.13379
G1 X101.028 Y94.991 E0.14494
G1 X101.607 Y94.66 E0.16713
G1 X101.989 Y94.457 E0.18151
G1 X102.616 Y94.149 E0.20475
G1 X102.932 Y94.006 E0.21628
G1 X103.563 Y93.744 E0.23901
G1 X103.995 Y93.58 E0.25438
G1 X104.656 Y93.353 E0.27762
G1 X105.1 Y93.216 E0.29308
G1 X105.769 Y93.032 E0.31615
G1 X106.064 Y92.961 E0.32625
G1 X106.723 Y92.824 E0.34863
G1 X107.136 Y92.751 E0.36258
G1 X107.841 Y92.65 E0.38627
G1 X108.311 Y92.598 E0.402
G1 X108.981 Y92.544 E0.42435
G1 X109.327 Y92.527 E0.43588
G1 X110.032 Y92.515 E0.45933
G1 X110.499 Y92.522 E0.47486
G1 X111.152 Y92.551 E0.4966
G1 X111.474 Y92.575 E0.50734
G1 X112.184 Y92.652 E0.5311
G1 X112.619 Y92.713 E0.54571
G1 X113.323 Y92.835 E0.56947
G1 X113.82 Y92.938 E0.58635
G1 X114.476 Y93.095 E0.60879
G1 X114.748 Y93.169 E0.61816
G1 X115.393 Y93.366 E0.64059
G1 X115.791 Y93.501 E0.65457
G1 X116.492 Y93.766 E0.6795
G1 X116.938 Y93.952 E0.69557
G1 X117.511 Y94.21 E0.71647
G1 X117.83 Y94.365 E0.72827
G1 X118.457 Y94.695 E0.75183
G1 X118.809 Y94.895 E0.7653
G1 X119.409 Y95.262 E0.78869
G1 X119.723 Y95.468 E0.80118
G1 X120.258 Y95.842 E0.82289
G1 X120.673 Y96.151 E0.8401
G1 X121.269 Y96.627 E0.86547
G1 X121.502 Y96.827 E0.87568
G1 X121.972 Y97.255 E0.89683
G1 X122.279 Y97.551 E0.91101
G1 X122.779 Y98.066 E0.93488
G1 X123.093 Y98.411 E0.9504
G1 X123.528 Y98.919 E0.97264
G1 X123.697 Y99.129 E0.98161
G1 X124.099 Y99.661 E1.00379
G1 X124.421 Y100.115 E1.0223
G1 X124.835 Y100.743 E1.04732
G1 X125.011 Y101.031 E1.05854
G1 X125.339 Y101.605 E1.08053
G1 X125.542 Y101.987 E1.09492
G1 X125.85 Y102.614 E1.11815
G1 X125.993 Y102.93 E1.12969
G1 X126.253 Y103.557 E1.15227
G1 X126.432 Y104.028 E1.16903
G1 X126.676 Y104.743 E1.19415
G1 X126.811 Y105.188 E1.20962
G1 X126.99 Y105.849 E1.2324
G1 X127.047 Y106.09 E1.24063
G1 X127.175 Y106.715 E1.26185
G1 X127.25 Y107.141 E1.27624
G1 X127.35 Y107.838 E1.29966
G1 X127.402 Y108.308 E1.31539
G1 X127.456 Y108.975 E1.33764
G1 X127.474 Y109.339 E1.34976
G1 X127.486 Y110.03 E1.37275
G1 X127.481 Y110.402 E1.38513
G1 X127.45 Y111.094 E1.40816
G1 X127.414 Y111.564 E1.42384
G1 X127.338 Y112.26 E1.44713
G1 X127.283 Y112.65 E1.46023
G1 X127.175 Y113.281 E1.48152
G1 X127.091 Y113.699 E1.4957
G1 X126.925 Y114.405 E1.51982
G1 X126.856 Y114.66 E1.52861
G1 X126.653 Y115.328 E1.55183
G1 X126.465 Y115.881 E1.57126
G1 X126.204 Y116.571 E1.59579
G1 X126.064 Y116.907 E1.6079
G1 X125.8 Y117.492 E1.62925
G1 X125.632 Y117.837 E1.64201
G1 X125.306 Y118.455 E1.66525
G1 X125.106 Y118.807 E1.67872
G1 X124.744 Y119.4 E1.70182
G1 X124.539 Y119.713 E1.71427
G1 X124.152 Y120.266 E1.73672
G1 X123.837 Y120.688 E1.75423
G1 X123.414 Y121.219 E1.77681
G1 X123.253 Y121.409 E1.78509
G1 X122.771 Y121.943 E1.80902
G1 X122.396 Y122.331 E1.82697
G1 X121.87 Y122.839 E1.85129
G1 X121.573 Y123.108 E1.86462
G1 X121.065 Y123.541 E1.88682
G1 X120.849 Y123.714 E1.89602
G1 X120.331 Y124.104 E1.91759
G1 X119.875 Y124.427 E1.93617
G1 X119.258 Y124.834 E1.96076
G1 X118.972 Y125.009 E1.97191
G1 X118.393 Y125.34 E1.99409
G1 X118.011 Y125.543 E2.00848
G1 X117.384 Y125.851 E2.03172
G1 X117.068 Y125.994 E2.04325
G1 X116.437 Y126.256 E2.06598
G1 X116.005 Y126.42 E2.08135
G1 X115.344 Y126.647 E2.10459
G1 X114.9 Y126.784 E2.12004
G1 X114.231 Y126.968 E2.14312
G1 X113.936 Y127.039 E2.15321
G1 X113.277 Y127.176 E2.1756
G1 X112.864 Y127.249 E2.18955
G1 X112.159 Y127.35 E2.21324
G1 X111.689 Y127.402 E2.22897
G1 X111.019 Y127.456 E2.25132
G1 X110.673 Y127.473 E2.26284
G1 X109.968 Y127.485 E2.2863
G1 X109.501 Y127.478 E2.30183
G1 X108.848 Y127.449 E2.32357
G1 X108.526 Y127.425 E2.33431
G1 X107.816 Y127.348 E2.35806
G1 X107.381 Y127.287 E2.37267
G1 X106.677 Y127.165 E2.39644
G1 X106.18 Y127.062 E2.41332
G1 X105.524 Y126.905 E2.43575
G1 X105.252 Y126.831 E2.44513
G1 X104.607 Y126.634 E2.46756
G1 X104.209 Y126.499 E2.48154
G1 X103.508 Y126.234 E2.50646
G1 X103.062 Y126.048 E2.52254
G1 X102.489 Y125.79 E2.54344
G1 X102.17 Y125.635 E2.55523
G1 X101.543 Y125.305 E2.5788
G1 X101.191 Y125.105 E2.59227
G1 X100.591 Y124.738 E2.61566
G1 X100.277 Y124.532 E2.62815
G1 X99.738 Y124.155 E2.65003
G1 X99.322 Y123.845 E2.66728
G1 X98.73 Y123.372 E2.69248
G1 X98.497 Y123.172 E2.7027
G1 X98.027 Y122.744 E2.72384
G1 X97.72 Y122.448 E2.73802
G1 X97.219 Y121.932 E2.76195
G1 X96.906 Y121.588 E2.77741
G1 X96.472 Y121.081 E2.79961
G1 X96.303 Y120.871 E2.80858
G1 X95.897 Y120.333 E2.83099
G1 X95.574 Y119.877 E2.84958
G1 X95.173 Y119.269 E2.8738
G1 X94.997 Y118.982 E2.885
G1 X94.655 Y118.385 E2.90789
G1 X94.453 Y118.004 E2.92223
G1 X94.15 Y117.386 E2.94512
G1 X94.007 Y117.07 E2.95666
G1 X93.744 Y116.436 E2.97949
G1 X93.565 Y115.964 E2.99628
G1 X93.324 Y115.256 E3.02115
G1 X93.189 Y114.811 E3.03662
G1 X93.013 Y114.16 E3.05905
G1 X92.956 Y113.92 E3.06725
G1 X92.824 Y113.281 E3.08895
G1 X92.749 Y112.854 E3.10337
G1 X92.65 Y112.161 E3.12666
G1 X92.598 Y111.691 E3.14239
G1 X92.544 Y111.022 E3.16471
G1 X92.527 Y110.677 E3.1762
G1 X92.515 Y109.971 E3.19968
G1 X92.522 Y109.503 E3.21525
G1 X92.551 Y108.85 E3.23699
G1 X92.575 Y108.528 E3.24773
G1 X92.654 Y107.803 E3.27199
G1 X92.722 Y107.323 E3.28811
G1 X92.829 Y106.698 E3.3092
G1 X92.909 Y106.3 E3.3227
G1 X93.075 Y105.595 E3.34679
G1 X93.144 Y105.34 E3.35558
G1 X93.347 Y104.672 E3.3788
G1 X93.535 Y104.119 E3.39823
G1 X93.796 Y103.429 E3.42276
G1 X93.936 Y103.093 E3.43487
G1 X94.2 Y102.508 E3.45622
G1 X94.368 Y102.163 E3.46898
G1 X94.694 Y101.545 E3.49222
G1 X94.894 Y101.193 E3.50568
G1 X95.256 Y100.599 E3.52882
G1 X95.463 Y100.283 E3.54138
G1 X95.85 Y99.731 E3.56381
G1 X96.168 Y99.305 E3.58149
G1 X96.612 Y98.749 E3.60515
G1 X96.768 Y98.566 E3.61315
G1 X97.229 Y98.057 E3.63599
G1 X97.604 Y97.669 E3.65394
G0 F6000 X97.892 Y97.947
G1 F1200 X98.398 Y97.457 E3.67737
G1 X98.695 Y97.188 E3.69069
G1 X99.185 Y96.772 E3.71207
G1 X99.401 Y96.599 E3.72128
G1 X99.9 Y96.222 E3.74208
G1 X100.356 Y95.899 E3.76066
G1 X100.951 Y95.507 E3.78436
G1 X101.237 Y95.332 E3.79551
G1 X101.795 Y95.014 E3.81688
G1 X102.177 Y94.811 E3.83126
G1 X102.781 Y94.514 E3.85365
G1 X103.097 Y94.371 E3.86519
G1 X103.705 Y94.118 E3.88709
G1 X104.137 Y93.954 E3.90246
G1 X104.774 Y93.735 E3.92486
G1 X105.218 Y93.598 E3.94032
G1 X105.863 Y93.421 E3.96256
G1 X106.158 Y93.35 E3.97266
G1 X106.793 Y93.218 E3.99423
G1 X107.206 Y93.145 E4.00818
G1 X107.885 Y93.047 E4.03099
G1 X108.355 Y92.995 E4.04672
G1 X109.001 Y92.944 E4.06827
G1 X109.347 Y92.927 E4.0798
G1 X110.026 Y92.915 E4.10238
G1 X110.493 Y92.922 E4.11792
G1 X111.122 Y92.95 E4.13886
G1 X111.444 Y92.974 E4.1496
G1 X112.128 Y93.048 E4.17248
G1 X112.563 Y93.109 E4.18709
G1 X113.242 Y93.227 E4.21001
G1 X113.739 Y93.33 E4.22689
G1 X114.371 Y93.481 E4.24851
G1 X114.643 Y93.555 E4.25788
G1 X115.265 Y93.745 E4.27951
G1 X115.663 Y93.88 E4.29349
G1 X116.338 Y94.135 E4.31749
G1 X116.784 Y94.321 E4.33356
G1 X117.337 Y94.57 E4.35373
G1 X117.656 Y94.725 E4.36553
G1 X118.259 Y95.043 E4.3882
G1 X118.611 Y95.243 E4.40167
G1 X119.19 Y95.596 E4.42422
G1 X119.504 Y95.802 E4.43672
G1 X120.019 Y96.163 E4.45763
G1 X120.434 Y96.472 E4.47484
G1 X121.008 Y96.931 E4.49929
G1 X121.241 Y97.131 E4.5095
G1 X121.694 Y97.543 E4.52987
G1 X122.001 Y97.839 E4.54405
G1 X122.483 Y98.335 E4.56705
G1 X122.797 Y98.68 E4.58257
G1 X123.216 Y99.169 E4.60399
G1 X123.385 Y99.379 E4.61295
G1 X123.773 Y99.893 E4.63437
G1 X124.095 Y100.347 E4.65289
G1 X124.494 Y100.952 E4.67699
G1 X124.67 Y101.24 E4.68822
G1 X124.985 Y101.793 E4.70938
G1 X125.188 Y102.175 E4.72377
G1 X125.485 Y102.779 E4.74616
G1 X125.628 Y103.095 E4.75769
G1 X125.88 Y103.699 E4.77946
G1 X126.059 Y104.17 E4.79622
G1 X126.293 Y104.859 E4.82042
G1 X126.428 Y105.304 E4.83589
G1 X126.6 Y105.941 E4.85783
G1 X126.657 Y106.182 E4.86607
G1 X126.781 Y106.784 E4.88651
G1 X126.856 Y107.21 E4.9009
G1 X126.953 Y107.882 E4.92348
G1 X127.005 Y108.352 E4.93921
G1 X127.056 Y108.994 E4.96063
G1 X127.074 Y109.358 E4.97275
G1 X127.086 Y110.024 E4.99491
G1 X127.081 Y110.396 E5.00728
G1 X127.051 Y111.064 E5.02952
G1 X127.015 Y111.534 E5.0452
G1 X126.942 Y112.204 E5.06762
G1 X126.887 Y112.594 E5.08072
G1 X126.783 Y113.202 E5.10123
G1 X126.699 Y113.62 E5.11541
G1 X126.539 Y114.301 E5.13868
G1 X126.47 Y114.556 E5.14747
G1 X126.274 Y115.199 E5.16982
G1 X126.086 Y115.752 E5.18925
G1 X125.835 Y116.417 E5.21289
G1 X125.695 Y116.753 E5.225
G1 X125.44 Y117.317 E5.24558
G1 X125.272 Y117.662 E5.25835
G1 X124.958 Y118.257 E5.28072
G1 X124.758 Y118.609 E5.29419
G1 X124.409 Y119.181 E5.31648
G1 X124.204 Y119.494 E5.32892
G1 X123.831 Y120.027 E5.35056
G1 X123.516 Y120.449 E5.36807
G1 X123.109 Y120.961 E5.38983
G1 X122.948 Y121.151 E5.39811
G1 X122.483 Y121.665 E5.42116
G1 X122.108 Y122.053 E5.43911
G1 X121.602 Y122.543 E5.46254
G1 X121.305 Y122.812 E5.47587
G1 X120.815 Y123.228 E5.49724
G1 X120.599 Y123.401 E5.50645
G1 X120.1 Y123.778 E5.52725
G1 X119.644 Y124.101 E5.54584
G1 X119.049 Y124.493 E5.56953
G1 X118.763 Y124.668 E5.58069
G1 X118.205 Y124.986 E5.60205
G1 X117.823 Y125.189 E5.61644
G1 X117.219 Y125.486 E5.63882
G1 X116.903 Y125.629 E5.65036
G1 X116.295 Y125.882 E5.67226
G1 X115.863 Y126.046 E5.68763
G1 X115.226 Y126.265 E5.71003
G1 X114.782 Y126.402 E5.72549
G1 X114.137 Y126.579 E5.74773
G1 X113.842 Y126.65 E5.75783
G1 X113.207 Y126.782 E5.7794
G1 X112.794 Y126.855 E5.79335
G1 X112.115 Y126.953 E5.81616
G1 X111.645 Y127.005 E5.83189
G1 X110.999 Y127.056 E5.85345
G1 X110.653 Y127.073 E5.86497
G1 X109.974 Y127.085 E5.88755
G1 X109.507 Y127.078 E5.90309
G1 X108.878 Y127.05 E5.92403
G1 X108.556 Y127.026 E5.93477
G1 X107.872 Y126.952 E5.95765
G1 X107.437 Y126.891 E5.97226
G1 X106.758 Y126.773 E5.99518
G1 X106.261 Y126.67 E6.01207
G1 X105.629 Y126.519 E6.03368
G1 X105.357 Y126.445 E6.04305
G1 X104.735 Y126.255 E6.06468
G1 X104.337 Y126.12 E6.07866
G1 X103.662 Y125.865 E6.10266
G1 X103.216 Y125.679 E6.11873
G1 X102.663 Y125.43 E6.13891
G1 X102.344 Y125.275 E6.1507
G1 X101.741 Y124.957 E6.17338
G1 X101.389 Y124.757 E6.18684
G1 X100.81 Y124.404 E6.2094
G1 X100.496 Y124.198 E6.22189
G1 X99.977 Y123.835 E6.24295
G1 X99.561 Y123.525 E6.26021
G1 X98.991 Y123.068 E6.28451
G1 X98.758 Y122.868 E6.29472
G1 X98.305 Y122.456 E6.31509
G1 X97.998 Y122.16 E6.32927
G1 X97.515 Y121.663 E6.35232
G1 X97.202 Y121.319 E6.36779
G1 X96.784 Y120.831 E6.38916
G1 X96.615 Y120.621 E6.39813
G1 X96.223 Y120.102 E6.41976
G1 X95.9 Y119.646 E6.43834
G1 X95.514 Y119.06 E6.46168
G1 X95.338 Y118.773 E6.47288
G1 X95.009 Y118.197 E6.49494
G1 X94.807 Y117.816 E6.50929
G1 X94.515 Y117.221 E6.53133
G1 X94.372 Y116.905 E6.54287
G1 X94.118 Y116.294 E6.56487
G1 X93.939 Y115.822 E6.58166
G1 X93.707 Y115.14 E6.60562
G1 X93.572 Y114.695 E6.62109
G1 X93.402 Y114.067 E6.64273
G1 X93.345 Y113.827 E6.65094
G1 X93.218 Y113.212 E6.67182
G1 X93.143 Y112.785 E6.68624
G1 X93.047 Y112.117 E6.70869
G1 X92.995 Y111.647 E6.72441
G1 X92.944 Y111.003 E6.7459
G1 X92.927 Y110.658 E6.75739
G1 X92.915 Y109.977 E6.78004
G1 X92.922 Y109.509 E6.79561
G1 X92.95 Y108.88 E6.81655
G1 X92.974 Y108.558 E6.82729
G1 X93.05 Y107.859 E6.85068
G1 X93.118 Y107.379 E6.8668
G1 X93.221 Y106.777 E6.88712
G1 X93.301 Y106.379 E6.90062
G1 X93.461 Y105.699 E6.92385
G1 X93.53 Y105.444 E6.93264
G1 X93.726 Y104.801 E6.955
G1 X93.914 Y104.248 E6.97442
G1 X94.165 Y103.583 E6.99806
G1 X94.305 Y103.247 E7.01017
G1 X94.56 Y102.683 E7.03076
G1 X94.728 Y102.338 E7.04352
G1 X95.042 Y101.743 E7.0659
G1 X95.242 Y101.391 E7.07936
G1 X95.591 Y100.819 E7.10165
G1 X95.798 Y100.503 E7.11421
G1 X96.171 Y99.97 E7.13585
G1 X96.489 Y99.544 E7.15353
G1 X96.916 Y99.008 E7.17633
G1 X97.072 Y98.825 E7.18432
G1 X97.517 Y98.335 E7.20634
G1 X97.892 Y97.947 E7.22429
G0 F6000 X98.18 Y98.225
G1 F1200 X98.667 Y97.754 E7.24682
G1 X98.964 Y97.485 E7.26015
G1 X99.435 Y97.084 E7.28072
G1 X99.651 Y96.911 E7.28993
G1 X100.131 Y96.549 E7.30992
G1 X100.587 Y96.226 E7.32851
G1 X101.159 Y95.849 E7.35129
G1 X101.445 Y95.674 E7.36244
G1 X101.982 Y95.367 E7.38302
G1 X102.364 Y95.164 E7.39741
G1 X102.946 Y94.878 E7.41897
G1 X103.262 Y94.735 E7.43051
G1 X103.847 Y94.492 E7.45158
G1 X104.279 Y94.328 E7.46695
G1 X104.892 Y94.117 E7.48851
G1 X105.336 Y93.98 E7.50397
G1 X105.956 Y93.81 E7.52535
G1 X106.251 Y93.739 E7.53544
G1 X106.863 Y93.612 E7.55623
G1 X107.276 Y93.539 E7.57018
G1 X107.929 Y93.445 E7.59212
G1 X108.399 Y93.393 E7.60785
G1 X109.02 Y93.343 E7.62857
G1 X109.366 Y93.326 E7.64009
G1 X110.02 Y93.315 E7.66185
G1 X110.487 Y93.322 E7.67738
G1 X111.092 Y93.349 E7.69752
G1 X111.414 Y93.373 E7.70826
G1 X112.072 Y93.444 E7.73028
G1 X112.507 Y93.505 E7.74489
G1 X113.161 Y93.618 E7.76696
G1 X113.658 Y93.721 E7.78384
G1 X114.266 Y93.867 E7.80464
G1 X114.538 Y93.941 E7.81401
G1 X115.136 Y94.124 E7.83481
G1 X115.534 Y94.259 E7.84879
G1 X116.184 Y94.504 E7.8719
G1 X116.63 Y94.69 E7.88797
G1 X117.162 Y94.93 E7.90738
G1 X117.481 Y95.085 E7.91918
G1 X118.062 Y95.391 E7.94102
G1 X118.414 Y95.591 E7.95448
G1 X118.97 Y95.931 E7.97616
G1 X119.284 Y96.137 E7.98865
G1 X119.781 Y96.484 E8.00881
G1 X120.196 Y96.793 E8.02602
G1 X120.748 Y97.234 E8.04952
G1 X120.981 Y97.434 E8.05973
G1 X121.417 Y97.831 E8.07934
G1 X121.724 Y98.127 E8.09353
G1 X122.187 Y98.604 E8.11564
G1 X122.501 Y98.949 E8.13115
G1 X122.904 Y99.42 E8.15177
G1 X123.073 Y99.63 E8.16074
G1 X123.447 Y100.124 E8.18134
G1 X123.769 Y100.578 E8.19986
G1 X124.152 Y101.16 E8.22303
G1 X124.328 Y101.448 E8.23425
G1 X124.632 Y101.98 E8.25463
G1 X124.835 Y102.362 E8.26902
G1 X125.121 Y102.944 E8.29059
G1 X125.264 Y103.26 E8.30213
G1 X125.506 Y103.841 E8.32306
G1 X125.685 Y104.312 E8.33982
G1 X125.911 Y104.975 E8.36312
G1 X126.046 Y105.42 E8.37858
G1 X126.211 Y106.033 E8.3997
G1 X126.268 Y106.274 E8.40793
G1 X126.388 Y106.853 E8.4276
G1 X126.463 Y107.279 E8.44199
G1 X126.555 Y107.926 E8.46372
G1 X126.607 Y108.396 E8.47945
G1 X126.657 Y109.014 E8.50007
G1 X126.675 Y109.378 E8.51219
G1 X126.686 Y110.019 E8.53352
G1 X126.681 Y110.391 E8.54589
G1 X126.652 Y111.033 E8.56727
G1 X126.616 Y111.503 E8.58294
G1 X126.546 Y112.148 E8.60452
G1 X126.491 Y112.538 E8.61762
G1 X126.391 Y113.124 E8.6374
G1 X126.307 Y113.542 E8.65158
G1 X126.153 Y114.196 E8.67392
G1 X126.084 Y114.451 E8.68271
G1 X125.895 Y115.07 E8.70424
G1 X125.707 Y115.623 E8.72366
G1 X125.465 Y116.263 E8.74642
G1 X125.325 Y116.599 E8.75853
G1 X125.081 Y117.142 E8.77833
G1 X124.913 Y117.487 E8.79109
G1 X124.61 Y118.06 E8.81265
G1 X124.41 Y118.412 E8.82611
G1 X124.075 Y118.962 E8.84753
G1 X123.87 Y119.275 E8.85998
G1 X123.511 Y119.787 E8.88078
G1 X123.196 Y120.209 E8.89829
G1 X122.804 Y120.702 E8.91924
G1 X122.643 Y120.892 E8.92752
G1 X122.195 Y121.387 E8.94973
G1 X121.82 Y121.775 E8.96767
G1 X121.333 Y122.246 E8.99021
G1 X121.036 Y122.515 E9.00354
G1 X120.565 Y122.916 E9.02411
G1 X120.349 Y123.089 E9.03331
G1 X119.869 Y123.451 E9.05331
G1 X119.413 Y123.774 E9.0719
G1 X118.841 Y124.151 E9.09468
G1 X118.555 Y124.326 E9.10583
G1 X118.018 Y124.633 E9.12641
G1 X117.636 Y124.836 E9.1408
G1 X117.054 Y125.122 E9.16236
G1 X116.738 Y125.265 E9.1739
G1 X116.153 Y125.508 E9.19497
G1 X115.721 Y125.672 E9.21034
G1 X115.108 Y125.883 E9.2319
G1 X114.664 Y126.02 E9.24735
G1 X114.044 Y126.19 E9.26874
G1 X113.749 Y126.261 E9.27883
G1 X113.137 Y126.388 E9.29962
G1 X112.724 Y126.461 E9.31357
G1 X112.071 Y126.555 E9.33551
G1 X111.601 Y126.607 E9.35124
G1 X110.98 Y126.657 E9.37196
G1 X110.634 Y126.674 E9.38348
G1 X109.98 Y126.685 E9.40524
G1 X109.513 Y126.678 E9.42077
G1 X108.908 Y126.651 E9.44091
G1 X108.586 Y126.627 E9.45165
G1 X107.928 Y126.556 E9.47366
G1 X107.493 Y126.495 E9.48827
G1 X106.839 Y126.382 E9.51035
G1 X106.342 Y126.279 E9.52723
G1 X105.734 Y126.133 E9.54803
G1 X105.462 Y126.059 E9.5574
G1 X104.864 Y125.876 E9.5782
G1 X104.466 Y125.741 E9.59218
G1 X103.816 Y125.496 E9.61529
G1 X103.37 Y125.31 E9.63136
G1 X102.838 Y125.07 E9.65077
G1 X102.519 Y124.915 E9.66257
G1 X101.938 Y124.609 E9.68441
G1 X101.586 Y124.409 E9.69787
G1 X101.03 Y124.069 E9.71955
G1 X100.716 Y123.863 E9.73204
G1 X100.216 Y123.514 E9.75232
G1 X99.8 Y123.204 E9.76957
G1 X99.251 Y122.765 E9.79295
G1 X99.018 Y122.565 E9.80317
G1 X98.582 Y122.168 E9.82278
G1 X98.275 Y121.872 E9.83696
G1 X97.811 Y121.394 E9.85912
G1 X97.498 Y121.05 E9.87459
G1 X97.096 Y120.58 E9.89516
G1 X96.927 Y120.37 E9.90412
G1 X96.55 Y119.871 E9.92493
G1 X96.227 Y119.415 E9.94351
G1 X95.855 Y118.851 E9.96598
G1 X95.679 Y118.564 E9.97718
G1 X95.362 Y118.01 E9.99841
G1 X95.16 Y117.629 E10.01275
G1 X94.879 Y117.056 E10.03398
G1 X94.736 Y116.74 E10.04552
G1 X94.492 Y116.152 E10.06669
G1 X94.313 Y115.68 E10.08348
G1 X94.089 Y115.024 E10.10654
G1 X93.954 Y114.579 E10.122
G1 X93.791 Y113.975 E10.14281
G1 X93.734 Y113.735 E10.15101
G1 X93.612 Y113.143 E10.17112
G1 X93.537 Y112.716 E10.18554
G1 X93.445 Y112.073 E10.20714
G1 X93.393 Y111.603 E10.22287
G1 X93.343 Y110.983 E10.24356
G1 X93.326 Y110.638 E10.25505
G1 X93.315 Y109.983 E10.27683
G1 X93.322 Y109.515 E10.2924
G1 X93.349 Y108.91 E10.31254
G1 X93.373 Y108.588 E10.32328
G1 X93.446 Y107.915 E10.3458
G1 X93.514 Y107.435 E10.36192
G1 X93.613 Y106.856 E10.38146
G1 X93.693 Y106.458 E10.39496
G1 X93.847 Y105.804 E10.41731
G1 X93.916 Y105.549 E10.4261
G1 X94.105 Y104.93 E10.44762
G1 X94.293 Y104.377 E10.46705
G1 X94.535 Y103.737 E10.48981
G1 X94.675 Y103.401 E10.50191
G1 X94.919 Y102.858 E10.52171
G1 X95.087 Y102.513 E10.53448
G1 X95.39 Y101.94 E10.55603
G1 X95.59 Y101.588 E10.5695
G1 X95.926 Y101.038 E10.59094
G1 X96.133 Y100.722 E10.6035
G1 X96.491 Y100.209 E10.62431
G1 X96.809 Y99.783 E10.64199
G1 X97.221 Y99.268 E10.66392
G1 X97.377 Y99.085 E10.67192
G1 X97.805 Y98.613 E10.69311
G1 X98.18 Y98.225 E10.71106
G1 F2700 E4.21106
;MESH:cylinder.stl
G0 F6000 X104.22 Y105.766
G0 X104.76 Y106.186
G0 X103.979 Y108.849
G0 X103.868 Y110.005
G0 X104.018 Y111.324
G0 X104.455 Y112.613
G0 X105.038 Y113.599
G0 X105.801 Y114.466
G0 X106.71 Y115.173
G0 X107.747 Y115.702
G0 X108.058 Y115.792
G0 X103.7 Y110.0
;TYPE:WALL-OUTER
G1 F2700 E10.71106