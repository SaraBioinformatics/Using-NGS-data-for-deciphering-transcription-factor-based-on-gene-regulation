cat uniq_ABF1 |while read i; do grep -P "^$i\t" sample_count_test.rpkm ; done > ABF1(check)



1) cat uniq_ABF1 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > ABF1
2) cat uniq_ABF3 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > ABF3
3) cat uniq_ABF4 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > ABF4
4) cat uniq_ANAC032 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > ANAC032
5) cat uniq_ANAC102 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > ANAC102

6) cat uniq_MYC2 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > MYC2

7) cat uniq_MYC3 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > MYC3
8) cat uniq_STZ_AIR |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > STZ_AIR
9) cat uniq_STZ_JA |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > STZ_JA
10) cat uniq_ANAC055 |while read i; do grep -P "^$i\t" ../sample_count_test.rpkm ; done > ANAC055
