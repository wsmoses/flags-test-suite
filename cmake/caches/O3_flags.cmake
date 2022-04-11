set(OPTFLAGS "${OPTFLAGS} -O3")

# Default 250
set(OPTFLAGS "${OPTFLAGS} -mllvm -alias-set-saturation-threshold=10000")

# Default 32
set(OPTFLAGS "${OPTFLAGS} -mllvm -dom-tree-reachability-max-bbs-to-explore=10000")

# Default 4
set(OPTFLAGS "${OPTFLAGS} -mllvm -max-devirt-iterations=10000")

# Default 20
set(OPTFLAGS "${OPTFLAGS} -mllvm -capture-tracking-max-uses-to-explore=10000")

# Default 1000
set(OPTFLAGS "${OPTFLAGS} -mllvm -iterative-bfi-max-iterations-per-block=10000")

# Default 7
set(OPTFLAGS "${OPTFLAGS} -mllvm -da-miv-max-level-threshold=100")

# Default 3
set(OPTFLAGS "${OPTFLAGS} -mllvm -icp-max-prom=100")

# Default 6
set(OPTFLAGS "${OPTFLAGS} -mllvm -available-load-scan-limit=10000")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -memory-check-merge-threshold=10000")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -max-dependences=10000")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -memdep-block-scan-limit=10000")

# Default 1000
set(OPTFLAGS "${OPTFLAGS} -mllvm -memdep-block-number-limit=100000")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -memssa-check-limit=10000")

# Default 2
set(OPTFLAGS "${OPTFLAGS} -mllvm -scalar-evolution-max-scev-operations-implication-depth=10")
# Default 2
set(OPTFLAGS "${OPTFLAGS} -mllvm -scalar-evolution-max-value-compare-depth=10")
# Default 8
set(OPTFLAGS "${OPTFLAGS} -mllvm -scalar-evolution-max-add-rec-size=200")
# Default 8
set(OPTFLAGS "${OPTFLAGS} -mllvm -scalar-evolution-max-scc-analysis-depth=200")
# Default 20
set(OPTFLAGS "${OPTFLAGS} -mllvm -dom-conditions-max-uses=10000")

# Default 4
set(OPTFLAGS "${OPTFLAGS} -mllvm -cvp-max-functions-per-value=10000")

# Default 3
set(OPTFLAGS "${OPTFLAGS} -mllvm -func-specialization-max-clones=30")

# Default 512
set(OPTFLAGS "${OPTFLAGS} -mllvm -instcombine-max-num-phis=100000")

# Default 32
set(OPTFLAGS "${OPTFLAGS} -mllvm -instcombine-max-sink-users=100000")

# Default ?
set(OPTFLAGS "${OPTFLAGS} -mllvm -instcombine-max-iterations=100000")

# Default ?
set(OPTFLAGS "${OPTFLAGS} -mllvm -instcombine-maxarray-size=100000")

# Default 150
set(OPTFLAGS "${OPTFLAGS} -mllvm -dse-memoryssa-scanlimit=100000")

# Default 90
set(OPTFLAGS "${OPTFLAGS} -mllvm -dse-memoryssa-walklimit=1000")
# 1000 raisies time of ../MicroBenchmarks/libs/benchmark/test/user_counters_tabular_test.cc from 30s to 1m, higher is unclear
# set(OPTFLAGS "${OPTFLAGS} -mllvm -dse-memoryssa-walklimit=100000")

# Default 5
set(OPTFLAGS "${OPTFLAGS} -mllvm -dse-memoryssa-partial-store-limit=100000")

# Default 5000
set(OPTFLAGS "${OPTFLAGS} -mllvm -dse-memoryssa-defs-per-block-limit=100000")

# Default 50
set(OPTFLAGS "${OPTFLAGS} -mllvm -dse-memoryssa-path-check-limit=100000")

# Default 500
set(OPTFLAGS "${OPTFLAGS} -mllvm -earlycse-mssa-optimization-cap=100000")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -gvn-max-num-deps=100000")

# Default 3
set(OPTFLAGS "${OPTFLAGS} -mllvm -jump-threading-implication-search-threshold=100000")

# Default 8
set(OPTFLAGS "${OPTFLAGS} -mllvm -licm-max-num-uses-traversed=100000")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -licm-mssa-optimization-cap=100000")

# Default 8
set(OPTFLAGS "${OPTFLAGS} -mllvm -loop-distribute-scev-check-threshold=100000")
# Default 128
set(OPTFLAGS "${OPTFLAGS} -mllvm -loop-distribute-scev-check-threshold-with-pragma=100000")

# Default 16
set(OPTFLAGS "${OPTFLAGS} -mllvm -rotation-max-header-size=100000")

# Default 10
set(OPTFLAGS "${OPTFLAGS} -mllvm -unroll-max-iteration-count-to-analyze=100000")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -loop-unswitch-memoryssa-threshold=100000")

# Default 2
set(OPTFLAGS "${OPTFLAGS} -mllvm -licm-versioning-max-depth-threshold=10")

# Default 100
set(OPTFLAGS "${OPTFLAGS} -mllvm -simple-loop-unswitch-memoryssa-threshold=100000")

# Default 4096
set(OPTFLAGS "${OPTFLAGS} -mllvm -ext-tsp-max-chain-size=100000")

# Default 2
set(OPTFLAGS "${OPTFLAGS} -mllvm -phi-node-folding-threshold=100")

# Default 16
set(OPTFLAGS "${OPTFLAGS} -mllvm -vectorize-scev-check-threshold=100000")

# Default 32
set(OPTFLAGS "${OPTFLAGS} -mllvm -slp-max-store-lookup=100000")

# Default 100000
set(OPTFLAGS "${OPTFLAGS} -mllvm -slp-schedule-budget=100000000")

# Default 12
set(OPTFLAGS "${OPTFLAGS} -mllvm -slp-recursion-max-depth=100")

# Default 2
set(OPTFLAGS "${OPTFLAGS} -mllvm -slp-max-look-ahead-depth=10")

# Default 30
set(OPTFLAGS "${OPTFLAGS} -mllvm -vector-combine-max-scan-instrs=100")


set(OPTFLAGS "${OPTFLAGS} -mllvm -inlineagg-threshold=10000 -mllvm -inline-threshold=10000 -mllvm -inlinehint-threshold=10000 -mllvm -inline-cost-full -mllvm -locally-hot-callsite-threshold=10000 -mllvm -hot-callsite-threshold=10000")

set(CMAKE_C_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "")
