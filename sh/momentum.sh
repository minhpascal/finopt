#!/bin/bash
ROOT=/home/larry-13.04/workspace/finopt
SRC=$ROOT/src
KAFKA_ASSEMBLY_JAR=$ROOT/jar/spark-streaming-kafka-assembly_2.10-1.4.1.jar
export PYTHONPATH=$SRC:$PYTHONPATH

#spark-submit  --jars  $KAFKA_ASSEMBLY_JAR /home/larry-13.04/workspace/finopt/cep/momentum.py vsu-01:2181 hsi 1 cal_trend 
#spark-submit --master spark://192.168.1.118:7077   --jars  $KAFKA_ASSEMBLY_JAR /home/larry-13.04/workspace/finopt/cep/momentum.py vsu-01:2181 hsi 1 simple 
#spark-submit --total-executor-cores 2 --master spark://192.168.1.118:7077   --jars  $KAFKA_ASSEMBLY_JAR /home/larry-13.04/workspace/finopt/cep/momentum.py vsu-01:2181 hsi 1 cal_trend 
spark-submit  --jars  $KAFKA_ASSEMBLY_JAR $SRC/cep/momentum2.py vsu-01:2181 hsi 1 persist 

